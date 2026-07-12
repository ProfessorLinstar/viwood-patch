.class public abstract Lcom/android/server/credentials/RequestSession;
.super Ljava/lang/Object;
.source "RequestSession.java"

# interfaces
.implements Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;


# instance fields
.field public final mCallingUid:I

.field public final mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mClientCallback:Ljava/lang/Object;

.field public final mClientRequest:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

.field public final mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

.field public final mEnabledProviders:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public final mHybridService:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mProviders:Ljava/util/Map;

.field public final mRequestId:Landroid/os/IBinder;

.field public final mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

.field public mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public final mRequestType:Ljava/lang/String;

.field public final mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

.field public final mUniqueSessionInteger:I

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$z8XJE6lXBjTuh-4InriVpIBk-vc(Lcom/android/server/credentials/RequestSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->lambda$setCancellationListener$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misUiWaitingForData(Lcom/android/server/credentials/RequestSession;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiWaitingForData()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V
    .locals 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 100
    new-instance v1, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;-><init>(Lcom/android/server/credentials/RequestSession;Lcom/android/server/credentials/RequestSession-IA;)V

    iput-object v1, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    .line 105
    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 128
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    .line 130
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

    .line 131
    iput p4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 132
    iput p5, p0, Lcom/android/server/credentials/RequestSession;->mCallingUid:I

    .line 133
    iput-object p6, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 134
    iput-object p7, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 135
    iput-object p8, p0, Lcom/android/server/credentials/RequestSession;->mRequestType:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 137
    iput-object p10, p0, Lcom/android/server/credentials/RequestSession;->mEnabledProviders:Ljava/util/Set;

    move-object p3, p11

    .line 138
    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 139
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p3, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 141
    new-instance p3, Lcom/android/server/credentials/CredentialManagerUi;

    invoke-direct {p3, p1, p4, p0, p10}, Lcom/android/server/credentials/CredentialManagerUi;-><init>(Landroid/content/Context;ILcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;Ljava/util/Set;)V

    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x104023e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/android/server/credentials/MetricUtilities;->getHighlyUniqueInteger()I

    move-result p1

    iput p1, p0, Lcom/android/server/credentials/RequestSession;->mUniqueSessionInteger:I

    .line 146
    new-instance p3, Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 147
    invoke-static {}, Lcom/android/server/credentials/MetricUtilities;->getHighlyUniqueInteger()I

    move-result p4

    invoke-direct {p3, p1, p4}, Lcom/android/server/credentials/metrics/RequestSessionMetric;-><init>(II)V

    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 149
    invoke-static {p8}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCodeFromRequestInfo(Ljava/lang/String;)I

    move-result p1

    move-wide/from16 v0, p12

    .line 148
    invoke-virtual {p3, v0, v1, p5, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectInitialPhaseMetricInfo(JII)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->setCancellationListener()V

    if-eqz p14, :cond_0

    if-eqz p7, :cond_0

    .line 152
    instance-of p1, p7, Landroid/os/IInterface;

    if-eqz p1, :cond_0

    .line 153
    move-object p1, p7

    check-cast p1, Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelExistingPendingIntent()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 294
    const-string v0, "CredentialManager"

    const-string v1, "Unable to cancel existing pending intent"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final clearRequestSessionLocked()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/RequestSession$SessionLifetime;

    iget v2, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    invoke-interface {v1, v2, p0}, Lcom/android/server/credentials/RequestSession$SessionLifetime;->onFinishRequestSession(ILandroid/os/IBinder;)V

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishSession(ZI)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishing session with propagateCancellation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 261
    :cond_0
    sget-object p1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 263
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/RequestSession;->logTrackOneCandidatesAndPrepareFinalPhaseLogs(I)V

    .line 265
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logApiCalledAtFinish(I)V

    .line 266
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->clearRequestSessionLocked()V

    return-void
.end method

.method public getProviderDataAndInitiateUi()V
    .locals 2

    .line 334
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->launchUiWithProviderData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getProviderDataForUi()Ljava/util/ArrayList;
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For ui, provider data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidatePhaseMetrics(Ljava/util/Map;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 348
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    const/4 v2, 0x1

    .line 347
    invoke-virtual {p0, v2, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-object v0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 353
    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public abstract initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
.end method

.method public abstract invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invokeClientCallbackSuccess(Ljava/lang/Object;)V
.end method

.method public isAnyProviderPending()Z
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 307
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPrimaryProviderViaProviderInfo(Landroid/content/ComponentName;)Z
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/ProviderSession;

    if-eqz p0, :cond_0

    .line 441
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderInfo:Landroid/credentials/CredentialProviderInfo;

    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRespondingWithError(I)Z
    .locals 0

    .line 457
    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isRespondingWithSuccess(I)Z
    .locals 0

    .line 472
    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRespondingWithUserCanceledError(I)Z
    .locals 0

    .line 465
    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSessionCancelled()Z
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public isUiInvocationNeeded()Z
    .locals 3

    .line 323
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 324
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 326
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return v1
.end method

.method public final isUiWaitingForData()Z
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerUi;->getStatus()Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    move-result-object p0

    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$setCancellationListener$0()V
    .locals 2

    .line 172
    const-string v0, "CredentialManager"

    const-string v1, "Cancellation invoked from the client - clearing session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->maybeCancelUi()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 174
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void
.end method

.method public abstract launchUiWithProviderData(Ljava/util/ArrayList;)V
.end method

.method public final logTrackOneCandidatesAndPrepareFinalPhaseLogs(I)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidateAggregateMetrics(Ljava/util/Map;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->isRespondingWithError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 p1, 0x1

    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->isRespondingWithUserCanceledError(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 279
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    return-void

    .line 282
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->isRespondingWithSuccess(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 283
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    :cond_2
    return-void
.end method

.method public final maybeCancelUi()Z
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-virtual {v0}, Lcom/android/server/credentials/CredentialManagerUi;->getStatus()Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    if-ne v0, v1, :cond_0

    .line 182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 185
    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v3, v4, v5}, Lcom/android/server/credentials/CredentialManagerUi;->createCancelIntent(Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget p0, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 184
    invoke-virtual {v2, v3, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    .line 225
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 229
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    .line 229
    invoke-virtual {p0, v1, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    if-nez v0, :cond_2

    .line 236
    const-string/jumbo p0, "providerSession not found in onUiSelection. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_2
    iget-object v2, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 241
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 243
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v5, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 244
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v5

    .line 243
    invoke-virtual {v4, p1, v5}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectMetricPerBrowsingSelect(Landroid/credentials/selection/UserSelectionDialogResult;Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V

    .line 245
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntrySubkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;

    move-result-object p1

    .line 245
    invoke-virtual {v0, v4, v5, p1}, Lcom/android/server/credentials/ProviderSession;->onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 247
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int v2, p1, v3

    if-ne v2, v1, :cond_3

    .line 250
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 251
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v1

    .line 252
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logAuthEntry(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;)V

    :cond_3
    return-void
.end method

.method public respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    .line 408
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void

    .line 416
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issue while responding to client with error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    const-string p2, "TYPE_USER_CANCELED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 425
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 426
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    .line 425
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    goto :goto_1

    .line 428
    :cond_2
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 429
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    .line 428
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    :goto_1
    return-void
.end method

.method public respondToClientWithResponseAndFinish(Ljava/lang/Object;)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    .line 373
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isSessionCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 378
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackSuccess(Ljava/lang/Object;)V

    .line 383
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    .line 383
    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issue while responding to client with a response : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void
.end method

.method public final setCancellationListener()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RequestSession;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public setUpClientCallbackListener(Landroid/os/IBinder;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Landroid/os/IInterface;

    .line 162
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 164
    const-string p1, "CredentialManager"

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
