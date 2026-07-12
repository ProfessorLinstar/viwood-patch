.class public final Lcom/android/server/logcat/LogcatManagerService;
.super Lcom/android/server/SystemService;
.source "LogcatManagerService.java"


# static fields
.field static final PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

.field static final STATUS_EXPIRATION_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field public final mActiveLogAccessCount:Ljava/util/Map;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

.field public final mClock:Ljava/util/function/Supplier;

.field public final mContext:Landroid/content/Context;

.field public final mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

.field public final mLogAccessStatus:Ljava/util/Map;

.field public mLogdService:Landroid/os/ILogd;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const v0, 0x11170

    goto :goto_0

    :cond_0
    const v0, 0x61a80

    :goto_0
    sput v0, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 305
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/logcat/LogcatManagerService;-><init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V
    .locals 1

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 192
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 310
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    .line 312
    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->createClock()Ljava/util/function/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 313
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$BinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;Lcom/android/server/logcat/LogcatManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    .line 314
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    .line 315
    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;-><init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    .line 523
    const-string v0, "LogcatManagerService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v5, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->approve(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 527
    :catch_1
    :try_start_1
    const-string v1, "Logd connection no longer valid while approving, trying once more."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 528
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 529
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, p2}, Landroid/os/ILogd;->approve(IIII)V

    .line 531
    :goto_0
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 532
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 534
    :goto_1
    const-string p1, "Fails to call remote functions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;
    .locals 3

    .line 561
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    iget-object v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "android.intent.extra.UID"

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    invoke-virtual {p0}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "EXTRA_CALLBACK"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object v0
.end method

.method public final declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 6

    .line 544
    const-string v0, "LogcatManagerService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v1

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v4, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v5, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 548
    :catch_1
    :try_start_1
    const-string v1, "Logd connection no longer valid while declining, trying once more."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 550
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object p0

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {p0, v1, v2, v3, p1}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 553
    :goto_0
    const-string p1, "Fails to call remote functions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getBinderService()Landroid/os/logcat/ILogcatManagerService;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    return-object p0
.end method

.method public final getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    .locals 1

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 345
    :cond_0
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-direct {v0, p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getDialogCallback()Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    return-object p0
.end method

.method public final getLogdService()Landroid/os/ILogd;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLogdService()Landroid/os/ILogd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    return-object p0
.end method

.method public final getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;
    .locals 6

    .line 354
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 355
    const-string v2, "LogcatManagerService"

    if-nez v0, :cond_0

    .line 357
    const-string p0, "PackageManager is null, declining the logd access"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 361
    :cond_0
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Unknown calling package name, declining the logd access"

    if-eqz v3, :cond_1

    .line 364
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_4

    .line 369
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 370
    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 371
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, -0x1

    if-eq p1, v5, :cond_3

    .line 373
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result p1

    .line 374
    iget-object v3, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 377
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v3

    .line 382
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 383
    aget-object p0, v0, p0

    if-eqz p0, :cond_6

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    .line 386
    :cond_6
    :goto_1
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 3

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_1

    .line 459
    iget-object v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 460
    invoke-virtual {p0, p1, v2}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 462
    iput p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 463
    iget-object p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 2

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz p1, :cond_1

    .line 472
    iget-object v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 475
    iput p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 476
    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 3

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object p1

    .line 503
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 506
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 513
    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 4

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-nez v1, :cond_1

    .line 402
    new-instance v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>(Lcom/android/server/logcat/LogcatManagerService-IA;)V

    .line 403
    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_1
    iget v2, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    return-void

    .line 418
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    .line 415
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    .line 412
    :cond_4
    iget-object p0, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 408
    :cond_5
    iget-object v1, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/server/logcat/LogcatManagerService;->processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void
.end method

.method public onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_0

    .line 489
    iget v0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 321
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 322
    const-string v0, "logcat"

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 324
    const-string v0, "LogcatManagerService"

    const-string v1, "Could not start the LogcatManagerService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 6

    .line 430
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    const/4 v1, 0x1

    .line 444
    iput v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 446
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 447
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v4, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 446
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 449
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.logcat.LogAccessDialogActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 451
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    .line 484
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    .line 483
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
