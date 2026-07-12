.class public Lcom/android/server/wearable/WearableSensingManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "WearableSensingManagerService.java"


# static fields
.field public static final RATE_LIMITER_TAG:Ljava/lang/String; = "WearableSensingManagerService"

.field public static final TAG:Ljava/lang/String; = "WearableSensingManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataRequestObserverContexts:Ljava/util/Set;

.field public volatile mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public volatile mIsServiceEnabled:Z

.field public final mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$J08FE5kNsft-VdA0ASZk1__BW-g(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nHVXgRQeoOfy3XNoZ7_sTh6Q-tc(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->lambda$createDataRequestRemoteCallback$1(ILandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextDataRequestObserverId(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->callPerUserServiceIfExist(Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateDataRequestRemoteCallback(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->createDataRequestRemoteCallback(Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->getDataRequestObserverContext(IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104025f

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 121
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result p1

    .line 126
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v1

    .line 124
    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBootPhase$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .locals 2

    .line 153
    const-string/jumbo v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    const-string/jumbo p1, "wearable_sensing"

    const/4 v1, 0x1

    .line 155
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final callPerUserServiceIfExist(Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 396
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-nez p0, :cond_1

    .line 400
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not available for userId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    .line 402
    invoke-static {p2, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 405
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 407
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 408
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createDataRequestRemoteCallback(Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;
    .locals 2

    .line 321
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public enforceCallingPermissionForManagement()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getComponentName(I)Landroid/content/ComponentName;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 206
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

.method public final getDataRequestObserverContext(IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 307
    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    if-ne v2, p2, :cond_0

    iget-object v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 309
    invoke-virtual {v2, p3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 314
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 193
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/16 p0, 0x7530

    return p0
.end method

.method public final synthetic lambda$createDataRequestRemoteCallback$1(ILandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 12

    .line 323
    const-string v0, "android.app.wearable.WearableSensingDataRequestBundleKey"

    const-class v1, Landroid/app/wearable/WearableSensingDataRequest;

    .line 324
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wearable/WearableSensingDataRequest;

    if-nez v0, :cond_0

    .line 328
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Received data request callback without a request."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 331
    :cond_0
    const-string v1, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    const-class v2, Landroid/os/RemoteCallback;

    .line 332
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/RemoteCallback;

    if-nez p3, :cond_1

    .line 336
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Received data request callback without a status callback."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_1
    invoke-virtual {v0}, Landroid/app/wearable/WearableSensingDataRequest;->getDataSize()I

    move-result v1

    .line 340
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 341
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    .line 346
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 343
    const-string p2, "WearableSensingDataRequest size exceeds the maximum allowed size of %s bytes. Dropping the request."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 347
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    sget-object v2, Lcom/android/server/wearable/WearableSensingManagerService;->RATE_LIMITER_TAG:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Data request exceeded rate limit. Dropping the request."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 355
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 360
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 361
    const-string v1, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 364
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v9, 0x2

    .line 365
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 367
    iget-object v5, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    invoke-virtual {v5, p1, v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 371
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 373
    invoke-static {p3, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 376
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Sending data request to %s: %s"

    .line 380
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    .line 381
    invoke-virtual {v0}, Landroid/app/wearable/WearableSensingDataRequest;->toExpandedString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 378
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-object v1, p2

    .line 383
    :catch_1
    :try_start_2
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not deliver pendingIntent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p3, v9}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .locals 1

    .line 165
    new-instance p2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 139
    const-string/jumbo v1, "wearable_sensing"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 144
    const-string/jumbo p1, "service_enabled"

    const/4 v0, 0x1

    .line 145
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_0
    return-void
.end method

.method public onServicePackageRestartedLocked(I)V
    .locals 0

    .line 177
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onServicePackageRestartedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .locals 0

    .line 182
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onServicePackageUpdatedLocked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 71
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V

    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/wearable/WearableSensingManagerPerUserService;I)V
    .locals 0

    .line 171
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onServiceRemoved"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->destroyLocked()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 132
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService-IA;)V

    const-string/jumbo v1, "wearable_sensing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 247
    :cond_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 226
    :cond_0
    sget-object p0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetDataRequestRateLimitWindowSize()V
    .locals 3

    .line 291
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Resetting the data request rate limit window size back to the default value. This also resets the current limit and should only be callable from a test."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    .line 299
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method

.method public setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V
    .locals 3

    .line 269
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Setting the data request rate limit window size to %s. This also resets the current limit and should only be callable from a test."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-void
.end method
