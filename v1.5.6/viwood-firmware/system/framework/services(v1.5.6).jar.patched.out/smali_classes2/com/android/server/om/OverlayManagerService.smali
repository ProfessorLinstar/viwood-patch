.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# instance fields
.field public final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field public final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPrevStartedUserId:I

.field public final mService:Landroid/os/IBinder;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static synthetic $r8$lambda$FyERzJAuu-lT7jJKEeUlKoCzE78(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->filterReceiverAccess(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GzMpaQrsjSzVXIS6Ewd4ZVcwe0E(Landroid/util/SparseArray;Landroid/content/pm/UserPackage;)V
    .locals 2

    .line 1508
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1510
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1511
    iget v1, p1, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1513
    :cond_0
    iget-object p0, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$VKUwGCBEaC1c_ubMSsuE2Rf3650(ILandroid/app/ActivityManagerInternal;Ljava/lang/String;)V
    .locals 9

    .line 1526
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    .line 1527
    invoke-static {v0, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x4000000

    .line 1528
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1529
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move v5, p0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method

.method public static synthetic $r8$lambda$gmoodzoVnIfdn8kZYi3Op37no2g(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->lambda$updateTargetPackagesLocked$1(Ljava/util/List;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFdAtDXTB46MBaeMgzs6tfJWKtk(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .locals 1

    .line 308
    iget-boolean v0, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAdd(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageAdd(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageChange(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageChange(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemove(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageRemove(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreSettingsLocked(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageManagerLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Landroid/content/pm/UserPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->isHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 269
    new-instance v2, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v4, -0x1

    .line 271
    iput v4, v0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    .line 614
    new-instance v4, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v4, v0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v4, v0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    const-wide/32 v5, 0x4000000

    .line 276
    :try_start_0
    const-string v7, "OMS#OverlayManagerService"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 277
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    .line 278
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "overlays.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v9, "overlays"

    invoke-direct {v7, v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 279
    new-instance v11, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v11, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 280
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 281
    new-instance v12, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v7

    invoke-direct {v12, v7, v11}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V

    .line 282
    new-instance v13, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v13}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v13, v0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 283
    new-instance v10, Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 284
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v14

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V

    iput-object v10, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 285
    new-instance v7, Lcom/android/server/om/OverlayActorEnforcer;

    invoke-direct {v7, v11}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/PackageManagerHelper;)V

    iput-object v7, v0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 287
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "OverlayManager"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 290
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x1

    .line 289
    invoke-virtual {v2, v1, v7, v8, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v15, v0, v3}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v1

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 298
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 299
    new-instance v2, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;

    invoke-direct {v2, v0, v3}, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 303
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V

    .line 307
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 311
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerService;->onStartUser(I)V

    .line 314
    const-string/jumbo v1, "overlay"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    const-class v1, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 318
    throw v0
.end method

.method public static broadcastActionOverlayChanged(Ljava/util/Set;I)V
    .locals 2

    .line 1523
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1524
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1525
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(ILandroid/app/ActivityManagerInternal;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static filterReceiverAccess(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1548
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1549
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1550
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    .line 368
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 373
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 374
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 375
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 376
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 379
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 2

    .line 1506
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1507
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-object v0
.end method

.method public static handleIncomingUser(ILjava/lang/String;)I
    .locals 7

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, p0

    move-object v5, p1

    .line 420
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 552
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .locals 4

    const-wide/32 v0, 0x4000000

    .line 453
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 455
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 459
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 460
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 462
    :try_start_3
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageAdded internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 465
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

    .line 467
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    throw p0
.end method

.method private onPackageRemoved(Ljava/lang/String;I)V
    .locals 4

    const-wide/32 v0, 0x4000000

    .line 534
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageRemoved(Ljava/lang/String;I)V

    .line 537
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 538
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 538
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

    .line 540
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    throw p0
.end method


# virtual methods
.method public final handlePackageAdd(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    .line 425
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 427
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public final handlePackageChange(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    .line 434
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 435
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final handlePackageRemove(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3

    .line 440
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    const-string v2, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    .line 442
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageReplacing(Ljava/lang/String;ZI)V

    return-void

    .line 447
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final initIfNeeded()V
    .locals 6

    .line 327
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 328
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 332
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 333
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateTargetPackagesLocked$1(Ljava/util/List;ILandroid/util/ArraySet;)V
    .locals 0

    .line 1494
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateActivityManager(Ljava/util/List;I)V

    .line 1498
    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;I)V
    .locals 4

    const-wide/32 v0, 0x4000000

    .line 473
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 475
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 479
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 480
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 482
    :try_start_3
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageChanged internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 485
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

    .line 487
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    throw p0
.end method

.method public final onPackageReplaced(Ljava/lang/String;I)V
    .locals 4

    const-wide/32 v0, 0x4000000

    .line 514
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 520
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 521
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 523
    :try_start_3
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageReplaced internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 526
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

    .line 528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    throw p0
.end method

.method public final onPackageReplacing(Ljava/lang/String;ZI)V
    .locals 4

    const-wide/32 v0, 0x4000000

    .line 494
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 496
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 500
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplacing(Ljava/lang/String;ZI)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 503
    :try_start_3
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageReplacing internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 506
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

    .line 508
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    throw p0
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public final onStartUser(I)V
    .locals 4

    .line 350
    iget v0, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 353
    :cond_0
    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating overlays for starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x4000000

    .line 355
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onStartUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 360
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 364
    iput p1, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    return-void

    :catchall_0
    move-exception p0

    .line 360
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

    .line 362
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 345
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->onStartUser(I)V

    return-void
.end method

.method public final persistSettingsLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1656
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 1657
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1659
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1660
    const-string p0, "OverlayManager"

    const-string v0, "failed to persist overlay state"

    invoke-static {p0, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final restoreSettingsLocked()V
    .locals 9

    const-wide/32 v0, 0x4000000

    .line 1667
    :try_start_0
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1669
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 1695
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1672
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1673
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1679
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1680
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    .line 1681
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1682
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1684
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1686
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_3

    aget v7, v3, v5

    .line 1687
    invoke-static {v4, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_2

    .line 1688
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v7}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    .line 1691
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_4

    .line 1672
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1692
    :goto_4
    :try_start_6
    const-string v2, "OverlayManager"

    const-string v3, "failed to restore overlay state"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1695
    :cond_5
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1696
    throw p0
.end method

.method public final updateActivityManager(Ljava/util/List;I)V
    .locals 0

    .line 1562
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    .line 1564
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1566
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "updateActivityManager remote exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 5

    .line 1574
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 1577
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1578
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    .line 1579
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1580
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1581
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;
    .locals 11

    const-wide/32 v0, 0x4000000

    .line 1596
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#updatePackageManagerLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1600
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1601
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1602
    const-string v3, "android"

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1604
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 1607
    :cond_0
    :goto_0
    new-instance v3, Landroid/util/ArrayMap;

    .line 1608
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1609
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    :try_start_1
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v6, "android"

    const/4 v7, 0x0

    .line 1611
    invoke-virtual {v5, v6, p2, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;IZ)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v5

    .line 1612
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1613
    new-instance v8, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v8, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>(Landroid/content/pm/overlay/OverlayPaths;)V

    .line 1614
    const-string v9, "android"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1615
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, p2, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;IZ)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1617
    :cond_1
    :goto_2
    invoke-virtual {v8}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1619
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1621
    :try_start_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1622
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1623
    invoke-virtual {v2, p2, v3, p0, v4}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    .line 1625
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1626
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1634
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1635
    const-string v3, "OverlayManager"

    const-string v5, "Failed to change enabled overlays for %s user %d"

    .line 1638
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 1635
    invoke-static {v5, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1642
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1644
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    .line 1619
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1644
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1645
    throw p0
.end method

.method public final updateTargetPackagesLocked(Landroid/content/pm/UserPackage;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1471
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;)V
    .locals 7

    .line 1477
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1480
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 1481
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    .line 1482
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1483
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1484
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1485
    invoke-virtual {p0, v2, v3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    .line 1486
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1491
    :cond_1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
