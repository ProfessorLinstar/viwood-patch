.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field static final MEDIA_PROJECTION_PREVENTS_REUSING_CONSENT:J = 0xfddea07L


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field public final mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeathEaters:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

.field public final mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

.field public mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public mProjectionToken:Landroid/os/IBinder;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$VZMDiw60tHV95Fyz9QDE__iDpMs(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->lambda$maybeStopMediaProjection$0(Landroid/media/projection/MediaProjectionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jk_Lw_5XLA0KRD4zZfV2F6Mj4cc(Lcom/android/server/media/projection/MediaProjectionManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->maybeStopMediaProjection(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaProjectionStopController(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionStopController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/media/projection/MediaProjectionManagerService;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->handleForegroundServicesChanged(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtypeToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V
    .locals 2

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    .line 165
    invoke-virtual {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->createClock()Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;

    .line 166
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 167
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->createCallbackLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 168
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 169
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 172
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 173
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 174
    invoke-virtual {p2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;->mediaProjectionMetricsLogger(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 175
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionStopController;

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-direct {p2, p1, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    .line 177
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 738
    const-string v0, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    const-string v1, "Media Projection: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_0

    .line 742
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 744
    :cond_0
    const-string/jumbo p0, "null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1725
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1723
    :cond_0
    const-string p0, "TYPE_PRESENTATION"

    return-object p0

    .line 1721
    :cond_1
    const-string p0, "TYPE_MIRRORING"

    return-object p0

    .line 1719
    :cond_2
    const-string p0, "TYPE_SCREEN_CAPTURE"

    return-object p0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 362
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 368
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1

    return-object p0

    .line 372
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final buildReviewGrantedConsentIntentLocked()Landroid/content/Intent;
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 529
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_projection_user_consent_required"

    const/4 v2, 0x1

    .line 530
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 531
    const-string v1, "extra_media_projection_package_reusing_consent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10800000

    .line 532
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createProjectionInternal(ILjava/lang/String;IZLandroid/os/UserHandle;I)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 10

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 678
    :try_start_1
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 684
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move/from16 v7, p6

    move-object v0, v2

    move v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZI)V

    if-eqz p4, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v3, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 691
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v0

    .line 674
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package matching :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dispatchEvent(Landroid/media/projection/MediaProjectionEvent;)V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v2

    .line 428
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v2

    .line 429
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->-$$Nest$mdispatchEvent(Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void

    .line 429
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchSession(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method public final dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 731
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 734
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 6

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 705
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v3

    .line 706
    invoke-virtual {v3}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v5, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-ne v5, p1, :cond_1

    iget-object p1, v3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 713
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 714
    const-string p1, "MediaProjectionManagerService"

    const-string p2, "Reusing token: getProjection can reuse the current projection"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 717
    :cond_1
    :try_start_2
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Not possible to reuse the current projection instance due to package details mismatching"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 707
    :cond_2
    :goto_0
    :try_start_3
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Not possible to reuse the current projection instance"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 721
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw p0
.end method

.method public final handleForegroundServicesChanged(III)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 303
    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p3, :cond_4

    iget v0, p3, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-eq v0, p2, :cond_0

    goto :goto_2

    .line 307
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result p3

    if-nez p3, :cond_1

    .line 308
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 310
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 320
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 321
    :try_start_1
    const-string p1, "MediaProjectionManagerService"

    const-string p3, "Content Recording: Stopped MediaProjection due to foreground service change"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_3

    const/4 p1, 0x7

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 326
    :cond_3
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 304
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit p1

    return-void

    .line 310
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public isCurrentProjection(Landroid/os/IBinder;)Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    .line 480
    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 482
    monitor-exit v0

    return p0

    .line 483
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$maybeStopMediaProjection$0(Landroid/media/projection/MediaProjectionEvent;)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchEvent(Landroid/media/projection/MediaProjectionEvent;)V

    return-void
.end method

.method public final linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 385
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    .line 386
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 387
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 389
    const-string p1, "MediaProjectionManagerService"

    const-string p2, "Unable to link to death for media projection monitoring callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeStopMediaProjection(I)V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExemptFromStopping(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    .line 187
    invoke-virtual {v1, p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->isStopReasonCallEnd(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    new-instance v1, Landroid/media/projection/MediaProjectionEvent;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/projection/MediaProjectionEvent;-><init>(IJ)V

    .line 193
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionEvent;->getEventType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->stopReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 203
    :cond_1
    const-string v1, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping MediaProjection due to reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->stopReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 209
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public monitor()V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logAppSelectorDisplayed(I)V

    return-void
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_0

    .line 571
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 573
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedCaptureBounds(IIILandroid/graphics/Rect;)V

    .line 576
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyPermissionRequestCancelled(I)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logProjectionPermissionRequestCancelled(I)V

    return-void
.end method

.method public notifyPermissionRequestDisplayed(I)V
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logPermissionRequestDisplayed(I)V

    return-void
.end method

.method public notifyPermissionRequestInitiated(II)V
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logInitiated(II)V

    return-void
.end method

.method public notifyWindowingModeChanged(III)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez v1, :cond_0

    .line 559
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 561
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logChangedWindowingMode(IIII)V

    .line 564
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStart()V
    .locals 4

    .line 250
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "media_projection"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 255
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->startTrackingStopReasons(Landroid/content/Context;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 283
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 284
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p2, :cond_0

    .line 285
    const-string p2, "MediaProjectionManagerService"

    const-string v0, "Content Recording: Stopped MediaProjection due to user switching"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 288
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 378
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 379
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestConsentForInvalidProjection()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->buildReviewGrantedConsentIntentLocked()Landroid/content/Intent;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    const-string v0, "MediaProjectionManagerService"

    const-string v3, "Reusing token: Reshow dialog for due to invalid projection."

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 513
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 512
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 505
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_2

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    move-result p1

    .line 447
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 448
    :cond_0
    const-string/jumbo p1, "none"

    .line 449
    :goto_0
    const-string v0, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content Recording: Stopped MediaProjection due to failing to set ContentRecordingSession - id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 451
    invoke-virtual {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :cond_1
    const/4 p0, 0x0

    .line 455
    monitor-exit v1

    return p0

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_4

    .line 459
    invoke-static {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fputmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/view/ContentRecordingSession;)V

    if-eqz p1, :cond_3

    .line 463
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 464
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v3

    .line 463
    invoke-virtual {v0, v2, v3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logInProgress(II)V

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    :cond_4
    const/4 p0, 0x1

    .line 468
    monitor-exit v1

    return p0

    .line 469
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;

    .line 649
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmVirtualDisplayId(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Processed consent so set the session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProjectionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 654
    const-string p0, "Reusing token: Failed to set session for reused consent, so stop"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v3

    goto :goto_0

    .line 592
    :cond_1
    :try_start_0
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 591
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 593
    const-string p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Ignore consent result of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for a token that isn\'t current"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 597
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p2, :cond_3

    .line 598
    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Reusing token: Can\'t review consent with no ongoing projection."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit v0

    return-void

    .line 601
    :cond_3
    invoke-static {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object p2

    .line 602
    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_3

    .line 607
    :cond_4
    const-string p2, "MediaProjectionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing token: Handling user consent result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 631
    :cond_5
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 632
    :cond_6
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p1

    iget-object v3, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 633
    :goto_1
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmTaskId(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)I

    move-result p1

    .line 634
    invoke-static {v3, p1}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 626
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    goto :goto_2

    .line 612
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    .line 614
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p1, :cond_9

    .line 616
    const-string p1, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content Recording: Stopped MediaProjection due to user consent result of CANCEL - id= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 618
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 616
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 638
    :cond_9
    :goto_2
    monitor-exit v0

    return-void

    .line 603
    :cond_a
    :goto_3
    const-string p0, "MediaProjectionManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing token: Ignore consent result "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " if not waiting for the result."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    monitor-exit v0

    return-void

    .line 638
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped MediaProjection to start new incoming projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 339
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)V
    .locals 3

    .line 347
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Content Recording: Stopped active MediaProjection and dispatching stop to callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->-$$Nest$fgetmSession(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    iget v2, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->logStopped(III)V

    const/4 p2, 0x0

    .line 355
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 356
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 1

    .line 394
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 395
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 397
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
