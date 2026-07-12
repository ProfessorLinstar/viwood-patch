.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "InstallPackageHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public mHbtInstallCount:I

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInternalLock:Ljava/lang/Object;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;


# direct methods
.method public static synthetic $r8$lambda$0mR6hZ7RAv-HW6b5LelB2kIPkw4(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->lambda$installExistingPackageAsUser$1(Ljava/lang/String;ILandroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mhA691Pd83-AXeC_cKJ3qReGOo(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$prepPerformDexoptIfNeeded$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5L4gieL_nGl58G96mjB5V2oXyg4(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->lambda$commitReconciledScanResultLocked$0(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxEDaVqfT0-n9_uc6UJZ6O6zw_U([ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 4

    .line 3537
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 3538
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    .line 3539
    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 3540
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Nvd3mg3KF2nCNWvp0cl-vZ7qZPk(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->lambda$installPackagesTraced$3(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3GnjlzvbT0QUr93RPwbCWFRz3E(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1234
    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static synthetic $r8$lambda$jJ7CS5F4oa02fYdRyiJoC-dzXVg(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->lambda$restoreAndPostInstall$2(ZLcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOh7A8ukYx2V2I_2P3ZigZgDzO8(Landroid/util/ArrayMap;Lcom/android/server/pm/ParallelPackageParser$ParseResult;Lcom/android/server/pm/ParallelPackageParser$ParseResult;)I
    .locals 0

    .line 3831
    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/apex/ApexInfo;

    .line 3832
    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/apex/ApexInfo;

    .line 3833
    iget-boolean p0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    iget-boolean p1, p1, Landroid/apex/ApexInfo;->isFactory:Z

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    .line 242
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 243
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 244
    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 245
    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 246
    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 247
    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 248
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 249
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 250
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 251
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    .line 252
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 253
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 254
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUpdateOwnershipHelper()Lcom/android/server/pm/UpdateOwnershipHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    return-void
.end method

.method public static cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .locals 1

    .line 2409
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .locals 6

    .line 4568
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4569
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4570
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 4571
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4572
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 4573
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4576
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 4577
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4578
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4579
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .locals 8

    .line 807
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 808
    const-string v0, "android.content.pm.extra.STATUS"

    .line 809
    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p0

    .line 808
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 814
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v0, p2

    .line 813
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .locals 2

    .line 2467
    new-instance v0, Ljava/security/DigestInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 2470
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 2473
    :cond_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 2467
    :try_start_1
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method


# virtual methods
.method public final acquireWakeLock(I)J
    .locals 5

    .line 1117
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_2

    .line 1122
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_1

    .line 1124
    const-string v1, "installer:packages"

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1127
    :cond_1
    const-string p0, "PackageManager"

    const-string p1, "Unable to obtain power manager while obtaining wake lock"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    monitor-exit v0

    return-wide v1

    .line 1132
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea600

    int-to-long v3, p1

    mul-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 1134
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    .line 4058
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    if-nez v0, :cond_0

    .line 4060
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4061
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 4063
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4064
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    .line 4076
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageSetting;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4078
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4080
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object v2

    const/4 v9, 0x0

    if-nez v2, :cond_2

    return-object v9

    .line 4086
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/ScanResult;

    .line 4087
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 4088
    new-instance v2, Lcom/android/server/pm/InstallRequest;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V

    .line 4092
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 4093
    :try_start_1
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4095
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_3
    move-object v5, v9

    .line 4097
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v0, :cond_4

    .line 4100
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    .line 4103
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 4105
    invoke-virtual {v2, v5}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 4109
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    const/4 v4, 0x0

    .line 4112
    :try_start_2
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4115
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4117
    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 4116
    invoke-static {v0, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4118
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v15

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4119
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v17

    move-object/from16 v16, v6

    .line 4114
    invoke-static/range {v11 .. v17}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object v0

    const/high16 v6, 0x4000000

    and-int v6, p3, v6

    if-nez v6, :cond_7

    .line 4121
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_7
    const/4 v6, -0x1

    .line 4123
    invoke-virtual {v2, v6}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingAppId(I)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v6, v4

    .line 4125
    :goto_3
    :try_start_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4126
    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    .line 4125
    invoke-virtual {v1, v0, v8}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4133
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x1

    if-eqz v10, :cond_8

    .line 4136
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4137
    :try_start_5
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 4138
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4141
    :cond_8
    :goto_4
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_9

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4142
    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4144
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/IncrementalProgressListener;

    .line 4145
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v8, v10}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 4144
    invoke-virtual {v2, v5, v6}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 4149
    :cond_9
    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4150
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v2

    if-ne v2, v0, :cond_a

    .line 4151
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4152
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4153
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    .line 4151
    invoke-static {v3, v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4154
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4155
    :try_start_7
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4156
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 4157
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4160
    :cond_a
    :goto_5
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    move v4, v6

    :goto_6
    if-eqz v4, :cond_b

    .line 4129
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    .line 4131
    :cond_b
    throw v0

    .line 4133
    :goto_7
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4097
    :goto_8
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4078
    :goto_9
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I
    .locals 2

    .line 4982
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/ScanPackageUtils;->adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I

    move-result p1

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 4987
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    const/16 p4, 0x1c

    if-ge p2, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/high16 p4, 0x20000

    and-int v0, p1, p4

    if-nez v0, :cond_2

    .line 4989
    invoke-static {p5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4990
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 4992
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4994
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4996
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p3, p3}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p3
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_1

    .line 5000
    :try_start_1
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5005
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string p3, "android"

    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 5006
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 5007
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p3

    .line 5006
    invoke-static {p0, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    if-eqz p0, :cond_1

    or-int/2addr p1, p4

    .line 5011
    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p1

    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2
    return p1
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_1

    .line 4864
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->isOverlayMutable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 4865
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4866
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is static and cannot be upgraded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xf

    .line 4865
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_1
    const/high16 p0, 0x480000

    and-int/2addr p0, p3

    if-eqz p0, :cond_2

    .line 4872
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    if-ge p0, p2, :cond_8

    .line 4873
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "System overlay "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4876
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4873
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4880
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, p2, :cond_8

    .line 4881
    const-string p0, "PackageManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System overlay "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of system overlays ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4891
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    const/16 p3, 0x1d

    if-ge p2, p3, :cond_5

    .line 4893
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4894
    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v0, "android"

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    .line 4895
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4896
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 4897
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4898
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must target Q or later, or be signed with the platform certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x10

    .line 4897
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    .line 4895
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4912
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    .line 4914
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4915
    :try_start_2
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    .line 4916
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p3, :cond_8

    .line 4918
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 4920
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 4929
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 4930
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 4932
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4933
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    .line 4934
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4935
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signed with a different certificate than both the reference package and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4937
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x12

    .line 4934
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    .line 4932
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4921
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overlay "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4922
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4923
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x11

    .line 4921
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_2
    move-exception p0

    .line 4916
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 6

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_0

    .line 4697
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertCodePolicy(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4700
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    and-int/lit8 v0, p3, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit16 v3, p3, 0x1000

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/high16 v4, 0x4000000

    and-int/2addr v4, p3

    if-eqz v4, :cond_3

    move v1, v2

    :cond_3
    const/4 v2, -0x5

    if-nez v0, :cond_4

    if-eqz v3, :cond_6

    .line 4713
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4714
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    .line 4716
    :cond_5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4717
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APEX package and can\'t be installed as an APK."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4722
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v0

    .line 4723
    invoke-virtual {v0, p1}, Lcom/android/server/pm/KeySetManagerService;->assertScannedPackageValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4725
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4727
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4728
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 4729
    :cond_7
    const-string p0, "PackageManager"

    const-string p2, "*************************************************"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    const-string p0, "PackageManager"

    const-string p2, "Core android package being redefined.  Skipping."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " codePath="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    const-string p0, "PackageManager"

    const-string p1, "*************************************************"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Core android package being redefined.  Skipping."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 4739
    :cond_8
    :goto_3
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v1, p1}, Lcom/mediatek/server/pm/PmsExt;->checkMtkResPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V

    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_a

    .line 4741
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4742
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 4743
    :cond_9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4744
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already installed.  Skipping duplicate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4748
    :cond_a
    :goto_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v1, :cond_c

    .line 4751
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4752
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 4753
    :cond_b
    const-string p0, "Duplicate static shared lib provider package"

    const/16 p1, -0xd

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 4757
    :cond_c
    :goto_5
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 4758
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_d
    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_12

    .line 4770
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService;->isExpectingBetter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4771
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4772
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4771
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4774
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 4776
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_f

    .line 4777
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Examining "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and requiring known path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4778
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4777
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    :cond_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    .line 4781
    :cond_10
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4782
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4783
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expected at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4784
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x17

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4788
    :cond_11
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4789
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x13

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_12
    :goto_6
    if-eqz v1, :cond_13

    .line 4800
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4805
    :cond_13
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4808
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4811
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 4812
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 4817
    :cond_14
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->assertMinSignatureSchemeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 4818
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 4702
    :cond_15
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x2

    const-string p2, "Code and resource paths haven\'t been set correctly"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5

    .line 4949
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4950
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4951
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4954
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4955
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 4957
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4960
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4963
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4964
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v1, "android"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    .line 4965
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4966
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 4967
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4969
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shares privileged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4970
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x13

    .line 4967
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    .line 4965
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 17

    move-object/from16 v0, p0

    .line 4827
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 4828
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v0, :cond_2

    .line 4830
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 4832
    invoke-virtual {v0, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4833
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    .line 4834
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    .line 4835
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v12

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x1

    if-gez v10, :cond_0

    add-long/2addr v8, v11

    .line 4836
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    .line 4837
    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    .line 4838
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_1

    sub-long/2addr v8, v11

    .line 4839
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-wide v1, v8

    move-wide v3, v1

    .line 4846
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    .line 4847
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_3

    return-void

    .line 4848
    :cond_3
    const-string v0, "Static shared lib version codes must be ordered as lib versions"

    const/16 v1, -0xe

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
.end method

.method public checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V
    .locals 7

    const/4 v0, 0x0

    .line 3964
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3965
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3966
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 3969
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected better "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but never showed up; reverting to system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3974
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3975
    invoke-virtual {v3, v2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;

    move-result-object v3

    .line 3977
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3978
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3980
    const-string v5, "PackageManager"

    if-nez v4, :cond_1

    .line 3981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unexpected fallback path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3984
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 3986
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v6
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    :try_start_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 3990
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3991
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    .line 3993
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :goto_2
    if-eqz v6, :cond_3

    .line 3986
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v1
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3994
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse original system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3994
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 1484
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v0, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 1486
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1487
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1490
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    .line 1488
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return p0
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V
    .locals 1

    .line 4190
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4191
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-lez v0, :cond_0

    .line 4192
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4193
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 4194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_0
    return-void
.end method

.method public cleanupDisabledPackageSettings(Ljava/util/List;[II)V
    .locals 7

    .line 3742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 3743
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3744
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3749
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    .line 3751
    const-string v4, "Updated system package "

    if-nez v3, :cond_0

    .line 3753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; removing its data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 3759
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer exists; rescanning package on data"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3768
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3769
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 3771
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3773
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3774
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3775
    :try_start_1
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 3776
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 3774
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v5
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3777
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse updated, ex-system package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3778
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3777
    const-string v5, "PackageManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move-object v3, v4

    .line 3786
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3787
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3788
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v4, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    :cond_4
    const/4 v2, 0x5

    .line 3790
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final commitInstallPackages(Ljava/util/List;)Z
    .locals 10

    .line 1409
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 1412
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ReconciledPackage;

    .line 1413
    iget-object v9, v2, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1414
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1416
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    const-string v7, "installPackageLI"

    const/16 v8, 0x10

    const/4 v5, -0x1

    move-object v3, p0

    .line 1415
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    .line 1419
    invoke-virtual {v9, p0}, Lcom/android/server/pm/InstallRequest;->setFreezer(Lcom/android/server/pm/PackageFreezer;)V

    move-object p0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    move-object v3, p0

    .line 1422
    iget-object p0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x40000

    .line 1424
    :try_start_1
    const-string v0, "commitPackages"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1425
    iget-object v0, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Ljava/util/List;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1427
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1429
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1430
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitStepsLIF(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 1431
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 1427
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1428
    throw p1

    .line 1429
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v1, :cond_2

    .line 1409
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    .line 499
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 500
    iget-object v9, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 501
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    .line 502
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v6

    .line 503
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    .line 504
    :goto_0
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setUpCustomResolverActivity(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    :cond_1
    const/4 v14, 0x0

    if-eqz v7, :cond_2

    .line 511
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v15

    cmp-long v4, v4, v15

    if-gez v4, :cond_2

    .line 512
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 513
    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 518
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 519
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/app-metadata/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app.metadata"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->hasAppMetadataFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 525
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    const/4 v4, 0x2

    .line 527
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_1

    .line 530
    :cond_4
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v5

    .line 531
    const-string v15, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 534
    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 539
    :cond_5
    :goto_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPlatformPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 544
    :cond_6
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    move-object v5, v4

    iget-object v4, v1, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    .line 547
    invoke-virtual {v1}, Lcom/android/server/pm/ReconciledPackage;->getCombinedAvailablePackages()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    .line 545
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 549
    invoke-virtual {v9, v1}, Lcom/android/server/pm/InstallRequest;->setLibraryConsumers(Ljava/util/ArrayList;)V

    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    and-int/lit16 v4, v6, 0x400

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    and-int/lit16 v4, v6, 0x800

    if-eqz v4, :cond_9

    goto :goto_2

    .line 561
    :cond_9
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    .line 564
    :goto_2
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v4

    if-eqz v1, :cond_b

    .line 568
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    move v5, v11

    .line 569
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_b

    .line 570
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 571
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 572
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 573
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    const-string/jumbo v12, "update lib"

    const/16 v14, 0xc

    .line 572
    invoke-virtual {v11, v15, v8, v12, v14}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_3

    .line 580
    :cond_b
    const-string/jumbo v1, "updateSettings"

    const-wide/32 v11, 0x40000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 582
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 585
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/pm/Settings;->insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 587
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 589
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 592
    :cond_c
    :goto_4
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    if-eqz v4, :cond_f

    .line 593
    :cond_e
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v8, v5

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v8, :cond_f

    aget v15, v5, v14

    .line 594
    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageSetting;->restoreComponentSettings(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_f
    const/high16 v5, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_10

    .line 602
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v5

    .line 603
    invoke-virtual {v5, v2}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 606
    :cond_10
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 607
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v8, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v14, v2, v13, v8, v5}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V

    .line 608
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    and-int/lit16 v14, v6, 0x400

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    goto :goto_6

    :cond_11
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v8, v5, v3, v4, v14}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 610
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 614
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v4

    if-nez v4, :cond_14

    if-eqz v7, :cond_13

    .line 615
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_7

    .line 619
    :cond_12
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 620
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v5

    .line 619
    invoke-interface {v4, v7, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    goto :goto_8

    .line 616
    :cond_13
    :goto_7
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 617
    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v5

    .line 616
    invoke-interface {v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 624
    :cond_14
    :goto_8
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v5, v4, :cond_17

    .line 628
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 629
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 630
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/server/pm/PackageManagerService;->addInstrumentation(Landroid/content/ComponentName;Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)V

    if-eqz v13, :cond_16

    if-nez v14, :cond_15

    .line 633
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_a

    :cond_15
    const/16 v8, 0x20

    .line 635
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :goto_a
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    if-eqz v14, :cond_18

    .line 641
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_18

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Instrumentation: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_18
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    .line 645
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    .line 646
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :try_start_1
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 648
    monitor-exit v4

    goto :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    .line 651
    :cond_19
    :goto_b
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    and-int/lit16 v2, v6, 0x2000

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :goto_c
    invoke-interface {v0, v3, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 653
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 655
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 653
    :goto_d
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final commitPackagesLocked(Ljava/util/List;[I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2481
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/ReconciledPackage;

    .line 2482
    iget-object v11, v10, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 2483
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v12

    .line 2484
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2486
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->onCommitStarted()V

    .line 2487
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_4

    .line 2488
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2491
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 2492
    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2495
    invoke-virtual {v11, v2, v6}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V

    .line 2497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2498
    invoke-virtual {v11, v7, v8}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingLastUpdateTime(J)V

    .line 2499
    invoke-virtual {v11, v7, v8}, Lcom/android/server/pm/InstallRequest;->setScannedPackageSettingFirstInstallTime(J)V

    .line 2501
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2502
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 2503
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2504
    invoke-virtual {v13}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v13

    .line 2502
    invoke-virtual {v7, v5, v8, v6, v13}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 2505
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2507
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v0, v15}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 2508
    invoke-virtual {v1, v0}, Lcom/android/server/pm/InstallPackageHelper;->disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2512
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v3

    new-instance v5, Lcom/android/server/pm/CleanUpArgs;

    .line 2514
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2516
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v7

    .line 2517
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    .line 2515
    invoke-static {v7, v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v0, v2}, Lcom/android/server/pm/CleanUpArgs;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_3

    .line 2519
    :cond_0
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iput-object v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_3

    .line 2524
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iget-object v3, v10, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    .line 2526
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->isKeepArtProfile()Z

    move-result v8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2524
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackage(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_0
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2528
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v2, :cond_3

    .line 2534
    :goto_1
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    if-ne v0, v15, :cond_4

    .line 2535
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2536
    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2535
    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2538
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2539
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v15

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    goto :goto_3

    .line 2529
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2545
    :cond_4
    :goto_3
    invoke-virtual {v1, v10, v6}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 2546
    invoke-virtual {v1, v0, v6, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V

    .line 2548
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2551
    invoke-virtual {v0, v6, v15}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v2

    .line 2550
    invoke-virtual {v11, v2}, Lcom/android/server/pm/InstallRequest;->setNewUsers([I)V

    const/4 v2, 0x0

    .line 2552
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    .line 2554
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-ne v2, v15, :cond_6

    .line 2559
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2560
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v3

    .line 2561
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getResponsibleInstallerTitles()Landroid/util/SparseArray;

    move-result-object v5

    .line 2562
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    .line 2559
    invoke-virtual {v2, v0, v3, v5, v7}, Lcom/android/server/pm/PackageManagerService;->markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V

    .line 2563
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 2564
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2570
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    .line 2572
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->onCommitFinished()V

    goto/16 :goto_0

    .line 2574
    :cond_7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    return-void
.end method

.method public final commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 267
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 269
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 270
    const-string v5, "android"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    .line 273
    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 276
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v5

    .line 277
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 278
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 279
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getRealPackageName()Ljava/lang/String;

    move-result-object v8

    .line 281
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 282
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 283
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 282
    invoke-virtual {v9, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    .line 284
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 285
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 284
    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_1

    .line 289
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 291
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9, v4}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 293
    iget v9, v9, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v2, v9}, Lcom/android/server/pm/InstallRequest;->setRemovedAppId(I)V

    .line 297
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isExistingSettingCopied()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 298
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 299
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    move-object v13, v7

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-eqz v7, :cond_3

    .line 303
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 305
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v11

    .line 304
    invoke-static {v3, v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v11

    .line 306
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 303
    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/Settings;->addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_3
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    :goto_0
    move-object v13, v9

    .line 312
    :goto_1
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v13}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 314
    invoke-virtual {v7, v13}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 315
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    .line 316
    invoke-static {v9}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 317
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 319
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v7}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 322
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isForceQueryableOverride()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_5

    .line 323
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    .line 326
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    const/high16 v11, 0x4000000

    and-int/2addr v11, v5

    if-eqz v11, :cond_6

    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v4

    :goto_2
    if-eqz v6, :cond_7

    move v12, v10

    goto :goto_3

    :cond_7
    move v12, v4

    :goto_3
    if-eqz v12, :cond_8

    .line 330
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    if-nez v11, :cond_9

    .line 331
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v16

    if-nez v16, :cond_a

    :cond_9
    move/from16 v17, v10

    goto :goto_5

    .line 332
    :cond_a
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v4

    move/from16 v17, v10

    .line 333
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 332
    invoke-virtual {v4, v10}, Lcom/android/server/SystemConfig;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_5
    const/4 v4, 0x0

    .line 334
    :goto_6
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 335
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/server/pm/UpdateOwnershipHelper;->isUpdateOwnershipDenylisted(Ljava/lang/String;)Z

    move-result v10

    if-eqz v15, :cond_b

    move/from16 v14, v17

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    const/high16 v18, 0x2000000

    if-eqz v9, :cond_19

    .line 342
    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 343
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v19, v2

    iget-object v2, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 347
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    .line 346
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object/from16 v19, v2

    :cond_d
    :goto_8
    if-nez v11, :cond_18

    .line 355
    iget v2, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    .line 356
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_9

    .line 357
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    :goto_9
    if-eqz v12, :cond_10

    if-ltz v2, :cond_f

    .line 362
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_a

    .line 365
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    array-length v2, v2

    .line 366
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v4

    if-gt v2, v4, :cond_10

    :goto_a
    move/from16 v2, v17

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    .line 367
    :goto_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    and-int v4, v4, v18

    if-eqz v4, :cond_11

    move/from16 v4, v17

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    .line 369
    :goto_c
    iget-object v11, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 370
    invoke-static {v15, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    .line 371
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    move/from16 v20, v2

    iget-object v2, v9, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 372
    invoke-virtual {v15, v2}, Lcom/android/server/pm/UpdateOwnershipHelper;->isUpdateOwnershipDenyListProvider(Ljava/lang/String;)Z

    move-result v2

    if-nez v20, :cond_16

    if-eqz v4, :cond_12

    if-nez v10, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    if-nez v14, :cond_15

    if-nez v12, :cond_14

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v2, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    if-eqz v14, :cond_18

    if-nez v11, :cond_18

    goto :goto_d

    .line 387
    :goto_f
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_11

    .line 384
    :goto_10
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    if-eqz v11, :cond_17

    if-nez v14, :cond_18

    .line 391
    :cond_17
    invoke-virtual {v9, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    .line 395
    :cond_18
    :goto_11
    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    goto :goto_14

    :cond_19
    move-object/from16 v19, v2

    .line 397
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v14, :cond_1a

    .line 400
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move/from16 v2, v17

    goto :goto_12

    :cond_1a
    const/4 v2, 0x0

    :goto_12
    if-eqz v12, :cond_1c

    if-eqz v2, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    .line 410
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_14

    .line 408
    :cond_1c
    :goto_13
    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    :cond_1d
    :goto_14
    const/high16 v2, 0x800000

    and-int/2addr v2, v5

    if-eqz v2, :cond_1f

    and-int v2, v5, v18

    if-eqz v2, :cond_1e

    move/from16 v4, v17

    goto :goto_15

    :cond_1e
    const/4 v4, 0x0

    .line 416
    :goto_15
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApkInUpdatedApex(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 419
    :cond_1f
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getApexModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 427
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 428
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    .line 430
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v13, v6}, Lcom/android/server/pm/Settings;->writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    if-eqz v8, :cond_20

    .line 433
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_20
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v2, :cond_21

    if-eqz v6, :cond_22

    .line 438
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 441
    :cond_21
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const/4 v15, 0x0

    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object/from16 v17, p2

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 445
    :cond_22
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 446
    iget-boolean v3, v1, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    if-eqz v3, :cond_23

    .line 447
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 449
    :cond_23
    iget-boolean v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    if-eqz v2, :cond_24

    .line 450
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v7, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 451
    iget-object v2, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v3, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 453
    :cond_24
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 455
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    .line 457
    invoke-virtual {v0, v12, v13, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V

    .line 458
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 459
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 462
    :cond_25
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const/high16 v1, 0x3f800000    # 1.0f

    .line 463
    invoke-virtual {v13, v1}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    .line 468
    :cond_26
    invoke-static {v13}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 469
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v13}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-object v12
.end method

.method public final completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 8

    if-eqz p3, :cond_2

    .line 1438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1439
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppOpsManagerInternal()Landroid/app/AppOpsManagerInternal;

    move-result-object p3

    .line 1440
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v1

    .line 1439
    invoke-virtual {p3, v0, v1}, Landroid/app/AppOpsManagerInternal;->onPackageAdded(Ljava/lang/String;I)V

    .line 1441
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getSignatureSchemeVersion()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 1450
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p3

    .line 1451
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getOriginUri()Landroid/net/Uri;

    move-result-object v2

    .line 1453
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v3, v1

    iget v1, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 1455
    invoke-static {p3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1458
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    .line 1456
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_0

    .line 1461
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 1462
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1463
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1462
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1464
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    .line 1469
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 1470
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5

    const/4 p2, 0x0

    .line 1472
    invoke-virtual {p1, p2}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 3469
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3470
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz p0, :cond_0

    .line 3471
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No files to decompress at: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 3476
    :cond_1
    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3478
    invoke-static {p2, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 3480
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I

    move-result p2

    :cond_2
    if-ne p2, v2, :cond_5

    .line 3487
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3488
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    if-nez p2, :cond_3

    .line 3489
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 3491
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 3493
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3494
    invoke-static {p0, v0}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    return-object v0

    .line 3497
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    return-object v1

    .line 3500
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    return-object v1
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .locals 3

    .line 3564
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3565
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 3564
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3567
    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    .line 3568
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3569
    :goto_0
    const-string v0, "android"

    const/4 v1, 0x2

    if-ne p1, p2, :cond_1

    .line 3570
    array-length p1, p3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    aget v2, p3, p2

    .line 3571
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_2

    .line 3574
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1

    .line 2579
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public doPostDexopt(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .locals 3

    .line 1072
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1073
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->onWaitDexoptFinished()V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x40000

    const/4 v2, 0x0

    .line 1077
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->commitInstallPackages(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1082
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1083
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1084
    iget p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    invoke-static {p1}, Lcom/mediatek/server/pm/hbtpackage/HBTPackage;->updateHbtStatus(I)V

    .line 1085
    iput v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    .line 1086
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p5, p6, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    return-void

    :catchall_0
    move-exception p1

    .line 1081
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1082
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1083
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1084
    iget p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    invoke-static {p3}, Lcom/mediatek/server/pm/hbtpackage/HBTPackage;->updateHbtStatus(I)V

    .line 1085
    iput v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    .line 1086
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p5, p6, p2}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    .line 1087
    throw p1
.end method

.method public final doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .locals 2

    .line 1091
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1092
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstallCleanUp(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/MoveInfo;)V

    goto :goto_0

    .line 1095
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1096
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final doPostInstallCleanUp(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/MoveInfo;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1102
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 1103
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p1, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1110
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 1111
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public final doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 6

    .line 2313
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    .line 2314
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnMsg()Ljava/lang/String;

    move-result-object v1

    .line 2315
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_0

    return-void

    .line 2317
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object p2

    .line 2318
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object p1

    .line 2317
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    if-ne v0, v3, :cond_8

    .line 2329
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->resolveTargetDir(ILjava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 2330
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    .line 2332
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2331
    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2334
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v4, "PackageManager"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Renaming "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_3

    .line 2336
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 2338
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/16 v5, 0x1f9

    invoke-static {v2, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v3, :cond_4

    .line 2342
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p0, v1, v0}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_5

    .line 2344
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 p0, -0x14

    if-nez v3, :cond_6

    .line 2352
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 2353
    :cond_5
    const-string p1, "Failed to restorecon"

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    new-instance p2, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p2

    .line 2359
    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 2363
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 2364
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2365
    invoke-interface {p2, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2368
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    .line 2369
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2371
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v5

    .line 2372
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2370
    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2373
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2376
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2375
    invoke-interface {p2, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 2384
    :cond_7
    :goto_3
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    .line 2383
    invoke-static {v1, v0, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2386
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 2385
    invoke-static {v1, v0, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2387
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->updateAllCodePaths(Ljava/util/List;)V

    return-void

    .line 2379
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2380
    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2347
    :goto_5
    const-string p1, "Failed to rename"

    invoke-static {v4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2348
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2325
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 2326
    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z
    .locals 5

    .line 2421
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 2423
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 2424
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    .line 2425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v1, :cond_0

    .line 2428
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 2429
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2430
    invoke-virtual {v2, v1, v3, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2432
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    .line 2439
    :cond_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    .line 2438
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    return v2

    .line 2442
    :cond_2
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2447
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 2448
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 2449
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    .line 2425
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z
    .locals 12

    .line 3363
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    const v1, -0x7fffffc0

    or-int/2addr v0, v1

    .line 3365
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3367
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3368
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "setEnabledSetting"

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3371
    :try_start_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    .line 3372
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 3373
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3375
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 3377
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p2

    .line 3375
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 3379
    :try_start_3
    const-string v0, "PackageManager"

    const-string/jumbo v5, "updateAllSharedLibrariesLPw failed: "

    invoke-static {v0, v5, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3381
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v5, -0x1

    invoke-interface {p2, v6, v5, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 3385
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 3388
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_0

    .line 3389
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12

    .line 3423
    :cond_0
    :goto_1
    :try_start_6
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/16 p2, 0x27

    invoke-virtual {p1, v6, v5, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 3426
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3427
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 3426
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_1

    .line 3428
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1
    return v2

    :catchall_2
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .line 3388
    :goto_2
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v4, :cond_2

    .line 3367
    :try_start_9
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p2
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_1
    const/4 p2, 0x2

    .line 3391
    :try_start_b
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3392
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "setEnabledSetting"

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v4
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 3396
    :try_start_c
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 3399
    :try_start_d
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 3400
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3401
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3402
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    const/4 v6, 0x0

    .line 3401
    invoke-virtual {p0, v0, v5, v6, v2}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v4, :cond_3

    .line 3405
    :try_start_f
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto :goto_b

    .line 3411
    :cond_3
    :goto_5
    :try_start_10
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3412
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3413
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3412
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3415
    const-string v0, "android"

    invoke-virtual {p1, p2, v3, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_8

    .line 3418
    :cond_4
    :goto_6
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 3419
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_7
    :try_start_12
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_d

    :goto_8
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catchall_7
    move-exception v0

    .line 3400
    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :goto_9
    if-eqz v4, :cond_5

    .line 3391
    :try_start_17
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    :try_start_18
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_a
    throw v2
    :try_end_18
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 3407
    :goto_b
    :try_start_19
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore system package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 3411
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 3412
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3413
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3412
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3415
    const-string v0, "android"

    invoke-virtual {p1, p2, v3, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_e

    .line 3418
    :cond_6
    :goto_c
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 3419
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_7

    :goto_d
    if-eqz v1, :cond_7

    .line 3428
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_7
    return v3

    .line 3419
    :goto_e
    :try_start_1c
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3411
    :goto_f
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 3412
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3413
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3412
    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3415
    const-string v4, "android"

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_11

    .line 3418
    :cond_8
    :goto_10
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 3419
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3420
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 3419
    :goto_11
    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :try_start_21
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :goto_12
    if-eqz v1, :cond_9

    .line 3365
    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_13
    throw p0
.end method

.method public final executePostCommitStepsLIF(Ljava/util/List;)V
    .locals 6

    .line 2834
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2835
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    .line 2836
    iget-object v1, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 2837
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 2838
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2839
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    .line 2840
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 2841
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v5, :cond_2

    .line 2842
    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2844
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v5, v4}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2849
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2846
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install: null storage for incremental package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2852
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2853
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 2854
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    .line 2853
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 2870
    :cond_3
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final freezePackageForInstall(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;
    .locals 6

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_0

    .line 2460
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p1, p0, p6}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    return-object p1

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public final getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I
    .locals 12

    .line 1157
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    .line 1158
    const-string v1, " doesn\'t exist or has been removed"

    const-string v2, "User "

    const/16 v3, -0x26

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v5, -0x2

    if-eq v0, v5, :cond_1

    .line 1159
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1164
    :cond_1
    :goto_0
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    if-eq v0, v4, :cond_2

    .line 1166
    invoke-virtual {v5, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_7

    .line 1168
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object p1

    .line 1169
    array-length v4, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_7

    aget v8, p2, v7

    .line 1170
    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    .line 1172
    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_install_apps"

    .line 1173
    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_debugging_features"

    .line 1175
    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v9, :cond_5

    if-nez v10, :cond_6

    .line 1178
    :cond_5
    invoke-virtual {v5, v8}, Landroid/util/IntArray;->add(I)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1183
    :cond_7
    :goto_4
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_8

    .line 1187
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    .line 1184
    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 6

    .line 4630
    invoke-static {p1, p2}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 4633
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    .line 4634
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4635
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4639
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallPackageHelper;->verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 4642
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    const-string v3, "PackageManager"

    if-eqz v2, :cond_2

    .line 4643
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4644
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 4645
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to migrate data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4648
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old shared user settings name "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " differs from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4650
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4647
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4655
    :cond_2
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz p0, :cond_3

    .line 4656
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Renaming new package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4657
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to old name "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4658
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4656
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .locals 4

    .line 3024
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3025
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v1, -0x1

    if-nez p0, :cond_0

    .line 3027
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    .line 3028
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 3029
    const-string p0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has more than one signature; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3042
    :cond_1
    :try_start_2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 3043
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 3044
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3049
    :try_start_3
    iget-object v3, p1, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 3051
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3052
    const-string p0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verifier package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have the expected public key; ignoring"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3057
    :cond_2
    :try_start_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    .line 3046
    :catch_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3058
    :goto_0
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final getUnknownSourcesSettings()I
    .locals 3

    .line 3290
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "install_non_market_apps"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 3112
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v1, :cond_0

    move v10, v14

    goto :goto_0

    :cond_0
    move v10, v13

    .line 3113
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    if-ne v1, v14, :cond_1

    move v15, v14

    goto :goto_1

    :cond_1
    move v15, v13

    .line 3114
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isUpdate()Z

    move-result v11

    .line 3115
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v12

    .line 3116
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3117
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v15, :cond_2

    .line 3119
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    :goto_2
    if-eqz v16, :cond_4

    .line 3121
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3122
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3121
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v13

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v14

    :goto_4
    if-eqz v15, :cond_5

    if-eqz v5, :cond_5

    .line 3124
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was removed before handlePackagePostInstall could be executed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x17

    .line 3126
    invoke-virtual {v3, v1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 3127
    const-string v1, "Package was removed before install could complete."

    invoke-virtual {v3, v1}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 3130
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOldCodeFile()Ljava/io/File;

    move-result-object v2

    .line 3131
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOldInstructionSet()[Ljava/lang/String;

    move-result-object v5

    .line 3130
    invoke-virtual {v1, v4, v2, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 3132
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    :cond_5
    if-eqz v15, :cond_11

    .line 3137
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installation completed for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Final code path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3137
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataSource()I

    move-result v5

    if-ne v5, v14, :cond_7

    .line 3142
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    .line 3143
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    .line 3142
    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3144
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 3145
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 3147
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 3148
    invoke-virtual {v6, v13}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 3150
    :cond_6
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_7

    :goto_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 3155
    :cond_7
    :goto_7
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v2, v5, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 3157
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3158
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    .line 3157
    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V

    .line 3160
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object v5

    .line 3162
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    .line 3163
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ProcessLoggingHandler;->invalidateBaseApkHash(Ljava/lang/String;)V

    :cond_8
    move-object v6, v1

    .line 3166
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v2

    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v7, v8

    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v9, v5

    iget-object v5, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object/from16 v18, v7

    iget-object v7, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v13, v9

    move-object/from16 v14, v17

    move/from16 v9, p2

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPostInstallBroadcasts(Ljava/util/function/Supplier;Lcom/android/server/pm/InstallRequest;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageSender;ZZZZ)V

    .line 3171
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isAllNewUsers()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v11, :cond_9

    .line 3172
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageAdded(Ljava/lang/String;I)V

    goto :goto_8

    .line 3174
    :cond_9
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageChanged(Ljava/lang/String;I)V

    :goto_8
    const/16 v1, 0xc26

    .line 3202
    invoke-virtual {v0}, Lcom/android/server/pm/InstallPackageHelper;->getUnknownSourcesSettings()I

    move-result v2

    .line 3201
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3205
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3206
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_d

    if-nez v10, :cond_c

    .line 3214
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/CleanUpArgs;)V

    .line 3216
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 3217
    :try_start_2
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 3218
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getOldPaths()Ljava/util/Set;

    move-result-object v6

    .line 3217
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_e

    .line 3219
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_b

    .line 3216
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    throw v2

    .line 3222
    :cond_c
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object v5

    .line 3223
    invoke-virtual {v2}, Lcom/android/server/pm/CleanUpArgs;->getInstructionSets()[Ljava/lang/String;

    move-result-object v2

    .line 3222
    invoke-virtual {v1, v4, v5, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    goto :goto_b

    .line 3228
    :cond_d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    :cond_e
    :goto_b
    if-nez v12, :cond_10

    .line 3237
    array-length v1, v13

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_11

    aget v5, v13, v2

    const-wide/16 v6, 0x0

    .line 3238
    invoke-interface {v14, v4, v6, v7, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 3242
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/pm/dex/DexManager;->notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V

    .line 3244
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v5}, Lcom/mediatek/server/pm/PmsExt;->onPackageAdded(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;I)V

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3249
    :cond_10
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 3250
    iput-object v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 3251
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 3252
    iput-object v13, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 3253
    iput-object v13, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 3254
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 3255
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    const/4 v2, 0x1

    .line 3256
    iput-boolean v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 3258
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    :cond_11
    if-eqz v15, :cond_13

    if-eqz v11, :cond_13

    if-eqz v10, :cond_12

    .line 3266
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_e

    .line 3268
    :cond_12
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_e

    .line 3271
    :cond_13
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 3275
    :goto_e
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 3278
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3279
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceMethod()Ljava/lang/String;

    move-result-object v0

    .line 3280
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getTraceCookie()I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 3279
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_14
    return-void
.end method

.method public final handleUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UpdateOwnershipHelper;->readUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/UpdateOwnershipHelper;->addToUpdateOwnerDenyList(Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 479
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    .line 480
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 481
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 484
    invoke-virtual {p1, v2}, Lcom/android/server/SystemConfig;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 485
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 488
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2
    return-void
.end method

.method public final initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 10

    .line 4022
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :cond_0
    const-string/jumbo v0, "parsePackage"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4026
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4027
    :try_start_1
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4028
    :try_start_2
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4031
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4034
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    if-eqz v3, :cond_1

    .line 4026
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4029
    :goto_1
    :try_start_5
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4031
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4032
    throw p0
.end method

.method public initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 3

    .line 4007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanPackage ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4009
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4011
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4012
    throw p0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v2, p2

    move/from16 v1, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 663
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_0

    .line 664
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installExistingPackageAsUser package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " installFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " installReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " allowlistedRestrictedPermissions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 670
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string v6, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    .line 672
    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neither user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nor current process has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installExistingPackage for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v6, v2

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v9, v5

    .line 683
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "no_install_apps"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v0, -0x6f

    .line 684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 687
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    and-int/lit16 v7, v1, 0x4000

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 694
    :goto_2
    :try_start_0
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v3, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v8

    .line 695
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-eqz v15, :cond_6

    .line 696
    invoke-virtual {v15, v2, v3}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_6
    const/4 v15, 0x0

    .line 699
    :goto_3
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :try_start_1
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 701
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    const/16 v17, -0x3

    if-eqz v1, :cond_18

    .line 702
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v18

    if-nez v18, :cond_7

    goto/16 :goto_d

    :cond_7
    if-eqz v5, :cond_9

    .line 705
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v18

    if-nez v18, :cond_8

    if-nez v8, :cond_8

    if-eqz v15, :cond_9

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    .line 707
    :cond_8
    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 709
    :cond_9
    :try_start_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v14, v9, v8}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v8

    if-nez v8, :cond_c

    .line 713
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    array-length v14, v8

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_5
    if-ge v15, v14, :cond_b

    aget v3, v8, v15

    .line 714
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    xor-int/lit8 v18, v3, 0x1

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p1

    goto :goto_5

    :cond_b
    :goto_6
    if-nez v18, :cond_c

    .line 720
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 723
    :cond_c
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    .line 724
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 v3, 0x0

    .line 725
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setHidden(ZI)V

    .line 726
    invoke-virtual {v1, v10, v2}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 727
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15, v2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    .line 730
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    .line 731
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 732
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    if-eqz v7, :cond_e

    .line 734
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    .line 738
    :goto_8
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v8, v1, v2, v5, v7}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    .line 740
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v3, :cond_17

    .line 743
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 744
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v5, :cond_f

    .line 746
    invoke-virtual {v5, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    .line 751
    :goto_9
    invoke-interface {v4, v3, v9}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_11

    .line 752
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v5, :cond_11

    .line 753
    :cond_10
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 755
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 757
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    const/high16 v4, 0x400000

    and-int v4, p3, v4

    if-eqz v4, :cond_12

    .line 761
    new-instance v4, Ljava/util/ArrayList;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 761
    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 764
    :cond_12
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 766
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v3

    const/4 v6, -0x1

    .line 764
    invoke-interface {v4, v5, v6, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 768
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 770
    :try_start_5
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    filled-new-array {v2}, [I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_15

    .line 772
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_13

    .line 768
    :try_start_7
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_a
    throw v1

    :cond_14
    const/4 v6, 0x0

    .line 775
    :cond_15
    :goto_b
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_16

    const/4 v6, 0x1

    :cond_16
    move-object v4, v1

    .line 776
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    const/4 v7, 0x0

    move v5, v2

    move-object v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V

    move v2, v5

    .line 779
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 780
    :try_start_9
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    filled-new-array {v2}, [I

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 781
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 787
    new-instance v1, Lcom/android/server/pm/InstallRequest;

    move-object v5, v4

    .line 788
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    move-object v6, v5

    filled-new-array {v2}, [I

    move-result-object v5

    move-object v7, v6

    new-instance v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v3, v2, v11}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V

    move-object v3, v7

    .line 796
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    move v8, v9

    move v9, v3

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/InstallRequest;-><init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;IIZ)V

    .line 797
    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    :catchall_4
    move-exception v0

    .line 781
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_17
    move-object v10, v11

    .line 800
    :goto_c
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v16, 0x1

    .line 803
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 703
    :cond_18
    :goto_d
    :try_start_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 800
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 740
    :goto_e
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 800
    :goto_f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .locals 8

    .line 3587
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3588
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3589
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x11

    .line 3592
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v1

    .line 3593
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    .line 3595
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 3596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3599
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 3600
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3599
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3602
    :try_start_2
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3605
    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->setPackageInstalledForSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;[I[IZ)V

    .line 3607
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void

    .line 3604
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v4, p3

    .line 3878
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3879
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "PackageManager"

    if-eqz v2, :cond_0

    .line 3880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No files in app dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3885
    :cond_0
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android:PMS_scan_data:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3886
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3885
    invoke-virtual {v2, v3}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3887
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_1

    .line 3888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning app dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " scanFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3888
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_1
    new-instance v9, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v9, v2, v3}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 3896
    array-length v2, v0

    const/4 v10, 0x0

    move v3, v10

    move v5, v3

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v6, v0, v3

    .line 3897
    invoke-static {v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v11, p2

    goto :goto_2

    .line 3898
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const/high16 v11, 0x1000000

    and-int/2addr v11, v4

    if-eqz v11, :cond_4

    .line 3904
    new-instance v11, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v11, v12, v13}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 3906
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping cache of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    invoke-virtual {v11, v6}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    :cond_4
    move/from16 v11, p2

    .line 3909
    invoke-virtual {v9, v6, v11}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v12, v5

    :goto_3
    move/from16 v11, p2

    if-lez v12, :cond_a

    .line 3915
    invoke-virtual {v9}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v13

    .line 3916
    iget-object v0, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 3920
    const-string v14, ": "

    const/4 v15, 0x1

    if-nez v0, :cond_6

    const-wide/32 v2, 0x40000

    .line 3922
    :try_start_0
    const-string v0, "addForInitLI"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v5, v2

    .line 3923
    :try_start_1
    iget-object v2, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v16, v5

    :try_start_2
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v6, p6

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3930
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    move v2, v15

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v5

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v16, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-wide/from16 v16, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-wide/from16 v16, v2

    .line 3926
    :goto_4
    :try_start_3
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 3927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to scan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3928
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3930
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_6

    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 3931
    throw v0

    .line 3932
    :cond_6
    instance-of v2, v0, Lcom/android/server/pm/PackageManagerException;

    if-eqz v2, :cond_9

    .line 3933
    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 3934
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 3935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3936
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/high16 v3, 0x800000

    and-int v3, p3, v3

    if-eqz v3, :cond_7

    if-eq v2, v15, :cond_7

    .line 3943
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/ApexManager;->reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x10000

    and-int v0, p3, v0

    if-nez v0, :cond_8

    if-eq v2, v15, :cond_8

    .line 3949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting invalid package at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3951
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v2, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_8
    add-int/lit8 v12, v12, -0x1

    move/from16 v4, p3

    goto/16 :goto_3

    .line 3938
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    return-void
.end method

.method public installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .locals 13

    .line 1028
    const-string v0, "installPackages"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1031
    new-instance v7, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1032
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1033
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/InstallPackageHelper;->acquireWakeLock(I)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 1035
    :try_start_0
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/criticalevents/CriticalEventLog;->logInstallPackagesStarted()V

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->prepareInstallPackages(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1037
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/pm/InstallPackageHelper;->scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1039
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;->reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_0

    .line 1061
    invoke-virtual {p0, p1, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1062
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    return-void

    .line 1044
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->renameAndUpdatePaths(Ljava/util/List;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    .line 1048
    :try_start_2
    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    :try_start_3
    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    .line 1051
    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->prepPerformDexoptIfNeeded(Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object p0, v0

    move v12, v11

    goto :goto_3

    :goto_1
    move v12, v11

    :goto_2
    if-nez v12, :cond_2

    .line 1061
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1062
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    invoke-virtual {v4, v6, v8}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1064
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v4, v9, v10, p0}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    :cond_2
    return-void

    :goto_3
    if-nez v12, :cond_3

    .line 1061
    invoke-virtual {v4, v6, v7, v11}, Lcom/android/server/pm/InstallPackageHelper;->completeInstallProcess(Ljava/util/List;Ljava/util/Map;Z)V

    .line 1062
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    invoke-virtual {v4, v6, v8}, Lcom/android/server/pm/InstallPackageHelper;->doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    .line 1064
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, v9, v10, p1}, Lcom/android/server/pm/InstallPackageHelper;->releaseWakeLock(JI)V

    .line 1066
    :cond_3
    throw p0
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 5

    .line 3437
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_0

    .line 3438
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncompressing system stub; pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->decompressPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3447
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3448
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 3449
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3450
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3452
    :try_start_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 3454
    const-string p3, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install compressed system package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3457
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 3458
    throw p2

    :catchall_0
    move-exception p0

    .line 3449
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3443
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to decompress stub at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3444
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xb

    .line 3443
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public installSystemStubPackages(Ljava/util/List;I)V
    .locals 7

    .line 3309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-string v1, "android"

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 3310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3312
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3313
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3317
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v4, :cond_1

    .line 3319
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3323
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3325
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 3327
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3334
    :cond_2
    :try_start_0
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3335
    invoke-virtual {v3, v2, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3337
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uncompressed system package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3346
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_4

    .line 3347
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3348
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v4, 0x2

    .line 3349
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stub disabled; pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final synthetic lambda$commitReconciledScanResultLocked$0(Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->handleUpdateOwnerDenyList(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public final synthetic lambda$installExistingPackageAsUser$1(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 793
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$installPackagesTraced$3(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .locals 0

    .line 1049
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->doPostDexopt(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    return-void
.end method

.method public final synthetic lambda$prepPerformDexoptIfNeeded$5(Ljava/lang/Runnable;)V
    .locals 0

    .line 1235
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$restoreAndPostInstall$2(ZLcom/android/server/pm/InstallRequest;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 893
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastUserIds()[I

    move-result-object p1

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object p1

    .line 895
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 896
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 4603
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4606
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 4610
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4611
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz p0, :cond_2

    .line 4612
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " clear profile due to version change "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4612
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final needSignatureMatchToSystem(Ljava/lang/String;)Z
    .locals 0

    .line 4592
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getPreinstallPackagesWithStrictSignatureCheck()Ljava/util/Set;

    move-result-object p0

    .line 4593
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z
    .locals 2

    .line 4171
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isExistingSettingCopied()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->needsNewAppId()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4175
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 4176
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->needsNewAppId()Z

    move-result p1

    .line 4175
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 4177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final performBackupManagerRestore(IILcom/android/server/pm/InstallRequest;)Z
    .locals 5

    .line 929
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 932
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIBackupManager()Landroid/app/backup/IBackupManager;

    move-result-object p0

    .line 933
    const-string v0, "PackageManager"

    if-eqz p0, :cond_4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    move p1, v1

    .line 939
    :cond_1
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_2

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to BM for possible restore for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v2, 0x40000

    .line 942
    const-string/jumbo v4, "restore"

    invoke-static {v2, v3, v4, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 944
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 945
    invoke-interface {p0, p1, p3, p2}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 948
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not ready. Restore at install didn\'t take place."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 955
    :goto_0
    const-string p1, "Exception trying to enqueue restore"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    :goto_1
    const/4 p0, 0x1

    return p0

    .line 959
    :cond_4
    const-string p0, "Backup Manager not found!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final performRollbackManagerRestore(IILcom/android/server/pm/InstallRequest;)Z
    .locals 11

    .line 970
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 973
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 980
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 981
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    const/4 v10, 0x1

    if-eqz v4, :cond_1

    .line 983
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 984
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v6

    .line 987
    invoke-virtual {v4, v0, v10}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 989
    :cond_1
    new-array p1, v1, [I

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    .line 991
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 993
    invoke-virtual {p3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p3

    const/high16 v0, 0x40000

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p3, v10

    :goto_2
    if-eqz v4, :cond_4

    if-eqz p3, :cond_4

    .line 998
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v8

    .line 999
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p3, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1000
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 1002
    invoke-static {p1}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v4

    move v9, p2

    .line 1001
    invoke-interface/range {v2 .. v9}, Lcom/android/server/rollback/RollbackManagerInternal;->snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V

    return v10

    :cond_4
    return v1

    .line 991
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepPerformDexoptIfNeeded(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 10

    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    .line 1195
    iget-object v2, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 1197
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 1198
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1199
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    .line 1200
    iget-object v4, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 1202
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1206
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    .line 1210
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :try_start_1
    invoke-virtual {p0, v2, v9}, Lcom/android/server/pm/InstallPackageHelper;->getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I

    move-result-object v0

    .line 1213
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V

    .line 1214
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isClearCodeCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    const/4 v5, -0x1

    const/16 v6, 0x27

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 1219
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 1223
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setKeepArtProfile(Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1226
    invoke-static {v2, v0}, Lcom/android/server/pm/DexOptHelper;->performDexoptIfNeededAsync(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->onWaitDexoptStarted()V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_4

    .line 1210
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p1
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1220
    :goto_5
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 1231
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1232
    new-instance p1, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 1234
    invoke-interface {v1, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/concurrent/CompletableFuture;

    .line 1233
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 1235
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_6

    .line 1237
    :cond_6
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_6
    return-void
.end method

.method public final prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;
    .locals 14

    .line 4224
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 4226
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    .line 4227
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4228
    invoke-static {p1, v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v5

    .line 4227
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4229
    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ScanPackageUtils;->getRealPackageName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 4232
    invoke-static {p1, v4}, Lcom/android/server/pm/ScanPackageUtils;->ensurePackageRenamed(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    .line 4234
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 4235
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4236
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4237
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was transferred to another, but its .apk remains"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4241
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4240
    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    const/4 v3, 0x0

    if-eqz v4, :cond_3

    .line 4244
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    .line 4247
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v5

    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_4

    .line 4250
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4251
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4252
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v11

    .line 4251
    invoke-virtual {v5, v11, v3, v3, v9}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v10

    .line 4257
    :goto_3
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v11, :cond_5

    const/high16 v11, -0x80000000

    and-int v11, p2, v11

    if-eqz v11, :cond_5

    if-eqz v5, :cond_5

    .line 4260
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Shared UserID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "): packages="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4262
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4260
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v4, :cond_6

    .line 4265
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v10

    .line 4267
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v0, :cond_7

    .line 4270
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v11, v9

    goto :goto_5

    :cond_7
    move v11, v3

    .line 4272
    :goto_5
    new-instance v0, Lcom/android/server/pm/ScanRequest;

    if-nez v4, :cond_8

    :goto_6
    move-object v2, p0

    move-object v1, p1

    move/from16 v9, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v3, v10

    move/from16 v10, p3

    goto :goto_7

    .line 4273
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    goto :goto_6

    :goto_7
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0

    .line 4267
    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepareInstallPackages(Ljava/util/List;)Z
    .locals 4

    .line 1267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    const-wide/32 v1, 0x40000

    .line 1269
    :try_start_0
    const-string/jumbo v3, "preparePackage"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1270
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareStarted()V

    .line 1271
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->preparePackage(Lcom/android/server/pm/InstallRequest;)V
    :try_end_0
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1280
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1273
    :try_start_1
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1274
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1273
    invoke-virtual {v0, p1, v3}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    .line 1275
    iget-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallRequest;->setOriginPackage(Ljava/lang/String;)V

    .line 1276
    iget-object p0, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallRequest;->setOriginPermission(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1280
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    .line 1279
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onPrepareFinished()V

    .line 1280
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1281
    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final preparePackage(Lcom/android/server/pm/InstallRequest;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1494
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 1495
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v3

    .line 1496
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    and-int/lit16 v7, v3, 0x800

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    and-int/lit16 v8, v3, 0x4000

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    const/high16 v9, 0x10000

    and-int v10, v3, v9

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    const/high16 v11, 0x20000

    and-int v12, v3, v11

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    move v12, v6

    .line 1503
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_5

    const/16 v21, 0x1

    goto :goto_5

    :cond_5
    move/from16 v21, v6

    .line 1505
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x206

    goto :goto_6

    :cond_6
    const/4 v13, 0x6

    :goto_6
    and-int/lit16 v14, v3, 0x1000

    if-eqz v14, :cond_7

    or-int/lit16 v13, v13, 0x400

    :cond_7
    if-eqz v7, :cond_8

    or-int/lit16 v13, v13, 0x2000

    :cond_8
    if-eqz v8, :cond_9

    or-int/lit16 v13, v13, 0x4000

    :cond_9
    if-eqz v10, :cond_a

    const v8, 0x8000

    or-int/2addr v13, v8

    :cond_a
    if-eqz v12, :cond_b

    const/high16 v8, 0x4000000

    or-int/2addr v13, v8

    .line 1525
    :cond_b
    new-instance v8, Ljava/io/File;

    if-eqz v12, :cond_c

    .line 1526
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    goto :goto_7

    :cond_c
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1527
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v10, :cond_d

    const-string v10, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "installPackageLI: path="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v10, -0x74

    if-eqz v7, :cond_f

    if-nez v4, :cond_e

    goto :goto_8

    .line 1531
    :cond_e
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible ephemeral install; external="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0, v10}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 1536
    :cond_f
    :goto_8
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1537
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v14

    const v15, -0x7fffffc0

    or-int/2addr v14, v15

    if-eqz v4, :cond_10

    const/16 v16, 0x8

    goto :goto_9

    :cond_10
    move/from16 v16, v6

    :goto_9
    or-int v14, v14, v16

    move/from16 v22, v9

    .line 1541
    const-string/jumbo v9, "parsePackage"

    move/from16 v24, v12

    const-wide/32 v11, 0x40000

    invoke-static {v11, v12, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1544
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v9
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1545
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v16

    const/16 v25, 0x0

    if-eqz v16, :cond_12

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v16

    if-nez v16, :cond_11

    goto :goto_a

    .line 1552
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v8

    invoke-virtual {v9, v8, v14}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v8

    .line 1554
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getPackageLite()Landroid/content/pm/parsing/PackageLite;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v16

    move-object/from16 v32, v16

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4c

    .line 1547
    :cond_12
    :goto_a
    invoke-virtual {v9, v8, v14, v6}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v8

    .line 1548
    invoke-static {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v32, v25

    :goto_b
    if-eqz v9, :cond_13

    .line 1556
    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_4f

    :catch_0
    move-exception v0

    goto/16 :goto_4e

    .line 1560
    :cond_13
    :goto_c
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    const/high16 v9, 0x1000000

    and-int/2addr v9, v3

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_d

    :cond_14
    move v9, v6

    :goto_d
    if-nez v9, :cond_15

    .line 1570
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v9, 0x1

    :cond_15
    if-nez v9, :cond_17

    .line 1577
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v9

    sget v11, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    if-lt v9, v11, :cond_16

    goto :goto_e

    .line 1578
    :cond_16
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targets deprecated sdk version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App package must target at least SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1d

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_17
    :goto_e
    if-eqz v7, :cond_1a

    .line 1588
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v9

    const/16 v11, 0x1a

    if-lt v9, v11, :cond_19

    .line 1594
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_18

    goto :goto_f

    .line 1595
    :cond_18
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not declare sharedUserId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package may not declare a sharedUserId"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1589
    :cond_19
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not target at least O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must target at least O"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1602
    :cond_1a
    :goto_f
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v9

    const/16 v11, -0x13

    if-eqz v9, :cond_1c

    .line 1604
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    if-nez v4, :cond_1b

    goto :goto_10

    .line 1608
    :cond_1b
    const-string v0, "PackageManager"

    const-string v1, "Static shared libs can only be installed on internal storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Static shared libs can only be installed on internal storage."

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1614
    :cond_1c
    :goto_10
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1615
    invoke-virtual {v1, v9}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    .line 1616
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v12

    if-eqz v12, :cond_1e

    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_1d

    goto :goto_11

    .line 1618
    :cond_1d
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0xf

    const-string v2, "Failed to install test-only apk. Did you forget to add -t?"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1624
    :cond_1e
    :goto_11
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v12, v15, :cond_1f

    .line 1625
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_12

    .line 1627
    :cond_1f
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v12

    .line 1628
    invoke-static {v12, v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 1630
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-nez v15, :cond_7a

    .line 1634
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SigningDetails;

    invoke-interface {v8, v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_12
    if-eqz v7, :cond_21

    .line 1637
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v12

    const/4 v15, 0x2

    if-lt v12, v15, :cond_20

    goto :goto_13

    .line 1639
    :cond_20
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not signed with at least APK Signature Scheme v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1647
    :cond_21
    :goto_13
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12

    .line 1648
    :try_start_3
    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    and-int/lit8 v17, v3, 0x2

    const/high16 v33, 0x200000

    if-eqz v17, :cond_2e

    const/16 v34, 0x1

    .line 1651
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v9}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1652
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1653
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1658
    invoke-interface {v8, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1660
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 1661
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v6, :cond_22

    .line 1662
    const-string v6, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replacing existing renamed package: oldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " pkgName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v15, v12

    goto/16 :goto_4b

    :cond_22
    :goto_14
    move-object v9, v5

    :cond_23
    if-eqz v15, :cond_25

    .line 1670
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v5, :cond_24

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replace existing package: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move/from16 v5, v34

    goto :goto_15

    :cond_25
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_2d

    .line 1674
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v6

    .line 1675
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v10

    const/16 v11, 0x16

    if-le v6, v11, :cond_27

    if-le v10, v11, :cond_26

    goto :goto_16

    .line 1678
    :cond_26
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support runtime permissions but the old target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1a

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1686
    :cond_27
    :goto_16
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPersistent()Z

    move-result v11

    if-eqz v11, :cond_29

    and-int v11, v3, v33

    if-eqz v11, :cond_28

    goto :goto_17

    .line 1688
    :cond_28
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a persistent app. Persistent apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1694
    :cond_29
    :goto_17
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v11

    if-eqz v11, :cond_2d

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_2d

    .line 1695
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 1696
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getMinSdkVersion()I

    move-result v11

    move/from16 v35, v3

    .line 1697
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMinSdkVersion()I

    move-result v3

    if-ne v6, v10, :cond_2b

    if-eq v11, v3, :cond_2a

    goto :goto_19

    :cond_2a
    :goto_18
    move/from16 v27, v4

    move/from16 v17, v5

    goto :goto_1a

    .line 1699
    :cond_2b
    :goto_19
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    move/from16 v27, v4

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v4

    move/from16 v17, v5

    .line 1700
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibVersionMajor()I

    move-result v5

    if-eq v4, v5, :cond_2c

    goto :goto_1a

    .line 1702
    :cond_2c
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it updates an sdk library <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> without changing the versionMajor, but the targetSdkVersion or minSdkVersion has changed: Old targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Old minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versionMajor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2d
    move/from16 v35, v3

    goto :goto_18

    :goto_1a
    move/from16 v5, v17

    :goto_1b
    move-object v3, v15

    goto :goto_1c

    :cond_2e
    move/from16 v35, v3

    move/from16 v27, v4

    const/16 v34, 0x1

    const/4 v5, 0x0

    goto :goto_1b

    :goto_1c
    if-nez v3, :cond_2f

    .line 1725
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1726
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1728
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v6

    .line 1727
    invoke-virtual {v4, v6}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1729
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    if-lez v6, :cond_2f

    const/4 v6, 0x0

    .line 1731
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    .line 1732
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    goto :goto_1d

    :cond_2f
    move-object v4, v3

    .line 1740
    :goto_1d
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1741
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1742
    invoke-virtual {v6, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 1744
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    :cond_30
    move-object v15, v4

    if-eqz v15, :cond_32

    .line 1749
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_31

    .line 1750
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Existing package for signature checking: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_31
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v4

    .line 1758
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v15}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    .line 1760
    invoke-virtual {v4, v15, v6, v13}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1762
    invoke-virtual {v4, v15, v8}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_32
    const/16 v6, 0x8

    goto :goto_1f

    .line 1763
    :cond_33
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1769
    :cond_34
    :try_start_4
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1771
    invoke-virtual {v10, v8}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v10

    .line 1770
    invoke-static {v10}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v19

    .line 1772
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1774
    invoke-virtual {v10, v8}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v10

    .line 1773
    invoke-static {v10}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v20

    .line 1779
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v16, v6

    const/16 v6, 0x8

    .line 1777
    invoke-static/range {v15 .. v21}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1783
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1784
    :try_start_5
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 1785
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1f

    :catch_1
    move-exception v0

    goto :goto_1e

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1788
    :goto_1e
    :try_start_9
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_35
    :goto_1f
    if-eqz v3, :cond_37

    .line 1794
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_36

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Existing package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_36
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    .line 1797
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/InstallRequest;->setOriginUsers([I)V

    move/from16 v28, v4

    goto :goto_20

    :cond_37
    const/16 v28, 0x0

    .line 1801
    :goto_20
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_3b

    .line 1804
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const/16 v16, -0x1

    .line 1805
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v11, v6, v10}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    if-eqz v6, :cond_3a

    .line 1808
    invoke-static {v8}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 1809
    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_38

    .line 1811
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3a

    .line 1812
    :cond_38
    invoke-virtual {v0, v6, v8, v13}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v10

    if-eqz v10, :cond_39

    goto :goto_22

    .line 1814
    :cond_39
    const-string v0, "146211400"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1815
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    .line 1814
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1817
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x7e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3a
    :goto_22
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x8

    goto :goto_21

    :cond_3b
    const/16 v16, -0x1

    .line 1828
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_23
    if-ltz v4, :cond_48

    .line 1830
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1831
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v10

    .line 1834
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v11

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_3c

    if-nez v28, :cond_3c

    .line 1836
    const-string v11, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    const-string v5, "Non-System package "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " attempting to delcare ephemeral permission "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; Removing ephemeral."

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1836
    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v5

    and-int/lit16 v5, v5, -0x1001

    .line 1839
    invoke-static {v6, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    goto :goto_24

    :cond_3c
    move/from16 v19, v5

    :goto_24
    if-eqz v10, :cond_41

    .line 1845
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1847
    invoke-virtual {v0, v5, v8, v13}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v11

    if-nez v11, :cond_40

    .line 1852
    const-string v10, "android"

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 1866
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v15, v12

    const-wide/32 v11, 0x40000000

    move/from16 v20, v7

    const/4 v7, 0x0

    :try_start_a
    invoke-interface {v10, v5, v11, v12, v7}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_3d

    .line 1868
    const-string v7, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[preparePackage] installed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v34

    goto :goto_25

    :catchall_4
    move-exception v0

    goto/16 :goto_4b

    :cond_3d
    const/4 v7, 0x0

    :goto_25
    if-nez v7, :cond_3e

    .line 1872
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v7, v5}, Lcom/mediatek/server/pm/PmsExt;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1873
    const-string v7, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[preparePackage] not installed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1875
    :cond_3e
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x70

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    .line 1878
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    :cond_3f
    move/from16 v20, v7

    move-object v15, v12

    .line 1882
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " attempting to redeclare system permission "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; ignoring new declaration"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1882
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-interface {v8, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_26

    :cond_40
    move/from16 v20, v7

    move-object v15, v12

    .line 1887
    const-string v5, "android"

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 1892
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    move/from16 v7, v34

    if-ne v5, v7, :cond_42

    .line 1894
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-nez v5, :cond_42

    .line 1895
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " trying to change a non-runtime permission "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to runtime; keeping old protection level"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1895
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {v10}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v5

    .line 1899
    invoke-static {v6, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    goto :goto_26

    :cond_41
    move/from16 v20, v7

    move-object v15, v12

    .line 1906
    :cond_42
    :goto_26
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 1907
    invoke-static {v8}, Lcom/android/server/pm/InstallPackageHelper;->cannotInstallWithBadPermissionGroups(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v3, :cond_44

    .line 1910
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1911
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v5, 0x1

    goto :goto_28

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_44
    const/4 v5, 0x0

    :goto_28
    if-nez v5, :cond_45

    .line 1918
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1919
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    const/16 v7, -0x7f

    if-eqz v5, :cond_47

    .line 1932
    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 1934
    const-string v10, "android"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_45

    .line 1935
    invoke-virtual {v0, v5, v8, v13}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v10

    if-eqz v10, :cond_46

    :cond_45
    const v5, 0x534e4554

    goto/16 :goto_29

    .line 1937
    :cond_46
    const-string v0, "146211400"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1938
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    .line 1937
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1940
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " owned by package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with incompatible certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1922
    :cond_47
    const-string v0, "146211400"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1923
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x534e4554

    .line 1922
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1925
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in non-existing group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_29
    add-int/lit8 v4, v4, -0x1

    move-object v12, v15

    move/from16 v5, v19

    move/from16 v7, v20

    const/16 v34, 0x1

    goto/16 :goto_23

    :cond_48
    move/from16 v19, v5

    move/from16 v20, v7

    move-object v15, v12

    .line 1953
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v28, :cond_4b

    if-nez v27, :cond_4a

    if-nez v20, :cond_49

    goto :goto_2a

    .line 1962
    :cond_49
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot update a system app with an instant app"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1958
    :cond_4a
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot install updates to system apps on sdcard"

    const/16 v2, -0x13

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1967
    :cond_4b
    :goto_2a
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v3

    if-eqz v3, :cond_4e

    or-int/lit16 v3, v13, 0x101

    .line 1972
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 1973
    :try_start_b
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing settings for moved package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x3

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_2b

    :catchall_5
    move-exception v0

    goto :goto_2c

    .line 1982
    :cond_4c
    :goto_2b
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    .line 1983
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1984
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :cond_4d
    move-object v5, v8

    goto/16 :goto_31

    :goto_2c
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_4e
    const/16 v34, 0x1

    or-int/lit8 v3, v13, 0x1

    if-nez v24, :cond_4d

    .line 1994
    :try_start_d
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_d} :catch_2

    .line 1995
    :try_start_e
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 1996
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v5, :cond_4f

    .line 1998
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    goto :goto_2d

    :cond_4f
    const/4 v4, 0x0

    .line 1999
    :goto_2d
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v5, :cond_50

    .line 2003
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x1

    goto :goto_2e

    :cond_50
    const/4 v5, 0x0

    .line 2006
    :goto_2e
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    if-nez v4, :cond_52

    if-eqz v5, :cond_51

    goto :goto_2f

    :cond_51
    const/16 v29, 0x0

    goto :goto_30

    :cond_52
    :goto_2f
    const/16 v29, 0x1

    .line 2009
    :goto_30
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v31

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    .line 2006
    invoke-interface/range {v26 .. v31}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v5, v27

    .line 2010
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 2011
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_31

    :catchall_6
    move-exception v0

    .line 1996
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_11
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception v0

    .line 2013
    const-string v1, "PackageManager"

    const-string v2, "Error deriving application ABI"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deriving application ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x4

    .line 2014
    invoke-static {v0, v1}, Lcom/android/server/pm/PrepareFailure;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    :goto_31
    if-eqz v24, :cond_53

    .line 2023
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 2024
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getApexInfo()Landroid/apex/ApexInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_53
    if-eqz v19, :cond_76

    .line 2046
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2047
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 2048
    :try_start_12
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 2049
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2050
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    .line 2051
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v8

    if-eqz v8, :cond_55

    if-eqz v6, :cond_55

    and-int/lit8 v6, v35, 0x20

    if-eqz v6, :cond_54

    goto :goto_32

    .line 2057
    :cond_54
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Packages declaring static-shared libs cannot be updated"

    const/4 v2, -0x5

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_55
    :goto_32
    and-int/lit16 v6, v3, 0x2000

    if-eqz v6, :cond_56

    const/4 v6, 0x1

    goto :goto_33

    :cond_56
    const/4 v6, 0x0

    .line 2068
    :goto_33
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 2069
    :try_start_13
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v9, :cond_57

    .line 2070
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "replacePackageLI: new="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2070
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_7
    move-exception v0

    goto/16 :goto_48

    .line 2075
    :cond_57
    :goto_34
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    .line 2076
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v25

    .line 2077
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    .line 2080
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v11

    .line 2081
    invoke-virtual {v11, v9, v10, v3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 2082
    invoke-virtual {v11, v9, v5}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v10

    if-eqz v10, :cond_58

    goto :goto_35

    .line 2083
    :cond_58
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package not signed by keys specified by upgrade-keysets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2088
    :cond_59
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    .line 2089
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    const/4 v12, 0x1

    .line 2091
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_5b

    const/16 v12, 0x8

    .line 2093
    invoke-virtual {v11, v10, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v12

    if-nez v12, :cond_5b

    if-eqz v21, :cond_5a

    .line 2100
    invoke-virtual {v11, v10}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v10

    if-eqz v10, :cond_5a

    goto :goto_35

    .line 2102
    :cond_5a
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package has a different signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2109
    :cond_5b
    :goto_35
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    if-eqz v10, :cond_5e

    .line 2110
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v10, :cond_5e

    .line 2113
    :try_start_14
    const-string v10, "SHA-512"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 2114
    new-instance v11, Ljava/io/File;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    .line 2115
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5c

    .line 2116
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_36
    if-ge v13, v12, :cond_5c

    aget-object v15, v11, v13

    move/from16 v17, v3

    .line 2117
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v3}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    goto :goto_36

    :cond_5c
    move/from16 v17, v3

    .line 2120
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 2125
    :try_start_15
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2131
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 2130
    invoke-interface {v5, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_37

    .line 2126
    :cond_5d
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package fails restrict-update check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2122
    :catch_3
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compute hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5e
    move/from16 v17, v3

    .line 2136
    :goto_37
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 2137
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_38

    .line 2139
    :cond_5f
    const-string v0, "<nothing>"

    .line 2141
    :goto_38
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 2142
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_60
    const-string v3, "<nothing>"

    .line 2146
    :goto_39
    const-string v10, "<nothing>"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 2147
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    if-eqz v10, :cond_61

    .line 2148
    const-string v3, "<nothing>"

    .line 2152
    :cond_61
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, -0x18

    if-nez v10, :cond_63

    .line 2153
    const-string v10, "<nothing>"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    if-nez v10, :cond_62

    .line 2154
    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->isArchivedOnAnyUser([I)Z

    move-result v10

    if-eqz v10, :cond_62

    goto :goto_3a

    .line 2158
    :cond_62
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shared user changed from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2166
    :cond_63
    :goto_3a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2167
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_64
    const/4 v12, 0x1

    goto :goto_3b

    .line 2168
    :cond_65
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to rejoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2174
    :goto_3b
    invoke-virtual {v9, v2, v12}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    const/4 v10, 0x0

    .line 2175
    invoke-virtual {v9, v2, v10}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    if-eqz v6, :cond_69

    .line 2179
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v6

    move/from16 v11, v16

    if-ne v6, v11, :cond_67

    .line 2180
    array-length v6, v2

    move v11, v10

    :goto_3c
    if-ge v11, v6, :cond_69

    aget v12, v2, v11

    .line 2181
    invoke-virtual {v9, v12}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v13

    if-eqz v13, :cond_66

    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 2183
    :cond_66
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 2190
    :cond_67
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_68

    goto :goto_3d

    .line 2192
    :cond_68
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t replace full app with instant app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2192
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v2, -0x74

    invoke-direct {v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(I)V

    throw v0

    .line 2198
    :cond_69
    :goto_3d
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2201
    new-instance v2, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v2}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 2202
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 2203
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 2205
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 2207
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6a

    const/4 v4, 0x1

    goto :goto_3e

    :cond_6a
    move v4, v10

    :goto_3e
    iput-boolean v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    const/4 v12, 0x1

    .line 2208
    iput-boolean v12, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 2209
    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 2210
    new-instance v4, Landroid/util/SparseIntArray;

    array-length v6, v0

    invoke-direct {v4, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    move v6, v10

    .line 2211
    :goto_3f
    array-length v4, v0

    if-ge v6, v4, :cond_6b

    .line 2212
    aget v4, v0, v6

    .line 2213
    iget-object v8, v2, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    .line 2214
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    move-result v11

    .line 2213
    invoke-virtual {v8, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 2216
    :cond_6b
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v4, v3

    invoke-direct {v0, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    move v6, v10

    .line 2217
    :goto_40
    array-length v0, v3

    if-ge v6, v0, :cond_6c

    .line 2218
    aget v0, v3, v6

    .line 2219
    iget-object v4, v2, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    .line 2220
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v8

    .line 2219
    invoke-virtual {v4, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 2222
    :cond_6c
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 2223
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 2224
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 2226
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2229
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v2

    .line 2230
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v3

    .line 2231
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v4

    .line 2232
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v6

    .line 2233
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v8

    .line 2234
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v11

    or-int v12, v17, v22

    if-eqz v2, :cond_6d

    const/high16 v23, 0x20000

    goto :goto_41

    :cond_6d
    move/from16 v23, v10

    :goto_41
    or-int v2, v12, v23

    if-eqz v3, :cond_6e

    const/high16 v3, 0x40000

    goto :goto_42

    :cond_6e
    move v3, v10

    :goto_42
    or-int/2addr v2, v3

    if-eqz v4, :cond_6f

    const/high16 v3, 0x80000

    goto :goto_43

    :cond_6f
    move v3, v10

    :goto_43
    or-int/2addr v2, v3

    if-eqz v6, :cond_70

    const/high16 v6, 0x100000

    goto :goto_44

    :cond_70
    move v6, v10

    :goto_44
    or-int/2addr v2, v6

    if-eqz v8, :cond_71

    const/high16 v6, 0x400000

    goto :goto_45

    :cond_71
    move v6, v10

    :goto_45
    or-int/2addr v2, v6

    if-eqz v11, :cond_72

    move/from16 v6, v33

    goto :goto_46

    :cond_72
    move v6, v10

    :goto_46
    or-int v3, v2, v6

    .line 2245
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_73

    .line 2246
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceSystemPackageLI: new="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", old="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2246
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    const/4 v12, 0x1

    .line 2249
    invoke-virtual {v1, v12}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 2250
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    goto :goto_47

    .line 2254
    :cond_74
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_75

    .line 2255
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceNonSystemPackageLI: new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2255
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    move/from16 v3, v17

    :goto_47
    move v8, v0

    move v2, v3

    move-object v4, v7

    move-object/from16 v10, v25

    goto :goto_49

    .line 2198
    :goto_48
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    .line 2049
    :try_start_17
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_76
    move/from16 v17, v3

    const/4 v10, 0x0

    .line 2265
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2267
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_77

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installNewPackageLI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_77
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 2271
    :try_start_18
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_79

    .line 2282
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 2288
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move v8, v10

    move/from16 v2, v17

    move-object/from16 v4, v25

    move-object v9, v4

    move-object v10, v9

    :goto_49
    move/from16 v7, v19

    move-object v0, v1

    move v3, v14

    move/from16 v1, v19

    move-object/from16 v6, v32

    .line 2293
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/InstallRequest;->setPrepareResult(ZIILcom/android/server/pm/pkg/PackageState;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-void

    :catchall_9
    move-exception v0

    goto :goto_4a

    .line 2284
    :cond_78
    :try_start_19
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to re-install "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, -0x1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2277
    :cond_79
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to re-install "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling package running as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, -0x1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2288
    :goto_4a
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1953
    :goto_4b
    :try_start_1a
    monitor-exit v15
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1631
    :cond_7a
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Failed collect during installPackageLI"

    .line 1632
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_4c
    if-eqz v9, :cond_7b

    .line 1544
    :try_start_1b
    invoke-virtual {v9}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_4d

    :catchall_a
    move-exception v0

    :try_start_1c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_4d
    throw v1
    :try_end_1c
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1557
    :goto_4e
    :try_start_1d
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    const-string v3, "Failed parse during installPackageLI"

    .line 1558
    invoke-static {v3, v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 1560
    :goto_4f
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    throw v0
.end method

.method public prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V
    .locals 9

    .line 3669
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_7

    .line 3670
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3671
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3676
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 3683
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3684
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3685
    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x5

    if-eqz v4, :cond_2

    .line 3687
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v5, :cond_6

    .line 3699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting better updated system app for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; removing system app.  Last known codePath="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", versionCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; scanned versionCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3699
    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3707
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 3708
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    .line 3715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no longer exists; its data will be wiped"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 3717
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v2, p4}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    goto :goto_2

    .line 3723
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3724
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 3730
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3725
    :cond_5
    :goto_1
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 12

    .line 1387
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v3, 0x40000

    .line 1390
    :try_start_1
    const-string/jumbo v0, "reconcilePackages"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 1392
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1393
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v9

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v11
    :try_end_1
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p1

    move-object v7, p2

    .line 1391
    :try_start_2
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1401
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1404
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_0

    .line 1396
    :goto_1
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 1397
    const-string v0, "Reconciliation failed..."

    invoke-virtual {p2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1401
    :cond_1
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1404
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 1401
    :goto_3
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1402
    throw p0

    .line 1403
    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_3

    .line 1387
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p0
.end method

.method public final releaseWakeLock(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_1

    .line 1141
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1143
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 1144
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1146
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1147
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1150
    :try_start_3
    const-string p2, "PackageManager"

    const-string p3, "Error while releasing installer lock"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    :cond_2
    :goto_0
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final renameAndUpdatePaths(Ljava/util/List;)Z
    .locals 5

    .line 1242
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    .line 1243
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 1244
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 1245
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1250
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_1
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1258
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 1260
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v2

    .line 1259
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1252
    invoke-virtual {v1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_3
    return p0

    :goto_1
    if-eqz v0, :cond_4

    .line 1242
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
.end method

.method public final resolveTargetDir(ILjava/io/File;)Ljava/io/File;
    .locals 0

    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2395
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 2397
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 10

    .line 821
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    .line 822
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_0

    .line 823
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreAndPostInstall userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isUpdate()Z

    move-result v1

    .line 831
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    move v2, v4

    goto :goto_2

    .line 839
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 840
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 841
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 842
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 845
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_3
    move v2, v3

    .line 853
    :goto_2
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v7, :cond_4

    iput v4, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 854
    :cond_4
    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 855
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v6

    .line 856
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 857
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 859
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v6, :cond_5

    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+ starting restore round-trip "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v6

    if-ne v6, v4, :cond_9

    .line 863
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->onRestoreStarted()V

    if-eqz v2, :cond_6

    .line 871
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 872
    invoke-virtual {p0, v0, v7, p1}, Lcom/android/server/pm/InstallPackageHelper;->performBackupManagerRestore(IILcom/android/server/pm/InstallRequest;)Z

    move-result v2

    :cond_6
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 881
    invoke-virtual {p0, v0, v7, p1}, Lcom/android/server/pm/InstallPackageHelper;->performRollbackManagerRestore(IILcom/android/server/pm/InstallRequest;)Z

    move-result v0

    move v2, v0

    :cond_7
    if-eqz v2, :cond_9

    .line 884
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->hasPostInstallRunnable()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v5, :cond_8

    .line 886
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v4, v3

    .line 887
    :goto_3
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v4, p1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setPostInstallRunnable(Ljava/lang/Runnable;)V

    :cond_9
    if-eqz v2, :cond_b

    if-eqz v5, :cond_a

    .line 905
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 906
    :try_start_3
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    .line 907
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :cond_a
    return-void

    .line 914
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->closeFreezer()V

    .line 915
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz p1, :cond_c

    const-string p1, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No restore - queue post-install for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-wide/32 v0, 0x40000

    .line 917
    const-string/jumbo p1, "postInstall"

    invoke-static {v0, v1, p1, v7}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 919
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v7, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 920
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_2
    move-exception p0

    .line 857
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .locals 6

    .line 3513
    iget-object v0, p1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 3514
    iget-object v1, p1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 3515
    iget-object v2, p1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 3517
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 3523
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 3525
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V

    .line 3526
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3528
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_0

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-installing system package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 3530
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 3531
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3532
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, v1, p3}, Lcom/android/server/pm/InstallPackageHelper;->installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_2

    .line 3534
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 3536
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>([ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    invoke-virtual {p3, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3550
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3554
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 3555
    :try_start_4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 3556
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4
    return-void

    :catchall_2
    move-exception p3

    if-eqz v4, :cond_5

    .line 3531
    :try_start_6
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p3
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3545
    :goto_3
    :try_start_8
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3545
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    new-instance v1, Lcom/android/server/pm/SystemDeleteException;

    invoke-direct {v1, p3}, Lcom/android/server/pm/SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3550
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3554
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3555
    :try_start_9
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V

    .line 3556
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_5

    :catchall_4
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3558
    :cond_6
    :goto_5
    throw p3

    :catchall_5
    move-exception p0

    .line 3526
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 14

    move/from16 v6, p2

    if-nez p1, :cond_0

    .line 3809
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 3812
    :cond_0
    new-instance v2, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 3816
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 3817
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v8, p1, v5

    .line 3818
    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3819
    invoke-virtual {v2, v9, v6}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 3820
    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3823
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 3824
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v4

    .line 3825
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3826
    invoke-virtual {v2}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v3

    .line 3827
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3830
    :cond_2
    new-instance v1, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3838
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v4

    .line 3839
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_7

    .line 3840
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 3841
    iget-object v1, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 3842
    iget-object v2, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/apex/ApexInfo;

    const/high16 v2, 0x4000000

    or-int v2, p3, v2

    .line 3844
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 3845
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v3

    or-int/2addr v2, v3

    .line 3846
    iget-boolean v3, v12, Landroid/apex/ApexInfo;->isFactory:Z

    if-nez v3, :cond_3

    and-int/lit8 v3, v6, -0x11

    or-int/lit8 v2, v2, 0x4

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_3

    :cond_3
    move v3, v2

    move v2, v6

    :goto_3
    if-nez v1, :cond_5

    .line 3853
    :try_start_0
    iget-object v1, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-direct {v5, v12}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3855
    iget-object v1, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    .line 3856
    iget-boolean v2, v12, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v12, Landroid/apex/ApexInfo;->isActive:Z

    if-nez v2, :cond_4

    .line 3857
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallPackageHelper;->disableSystemPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    .line 3859
    :cond_4
    :goto_4
    new-instance v2, Lcom/android/server/pm/ApexManager$ScanResult;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v1, v3}, Lcom/android/server/pm/ApexManager$ScanResult;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3861
    :goto_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3863
    :cond_5
    instance-of v0, v1, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_6

    .line 3864
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3866
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    return-object v9
.end method

.method public final scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 15

    .line 1288
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1289
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 1290
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/16 p0, -0x74

    .line 1292
    const-string v0, "Failed to obtain package to scan"

    invoke-virtual {v2, p0, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v5

    .line 1296
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 1297
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1299
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->onScanStarted()V

    .line 1300
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v8

    .line 1301
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v10

    .line 1302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 1303
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v14

    move-object v7, p0

    .line 1300
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageTraced(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v8

    .line 1304
    invoke-virtual {v2, v8}, Lcom/android/server/pm/InstallRequest;->setScanResult(Lcom/android/server/pm/ScanResult;)V

    .line 1305
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->onScanFinished()V

    .line 1306
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in multi-package install request."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x5

    invoke-virtual {v2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    .line 1315
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    .line 1314
    invoke-virtual {p0, v9, v4}, Lcom/android/server/pm/InstallPackageHelper;->checkNoAppStorageIsConsistent(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1318
    const-string p0, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    const/4 v0, -0x7

    invoke-virtual {v2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v5

    .line 1324
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v9

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    move v9, v3

    goto :goto_1

    :cond_4
    move v9, v5

    .line 1325
    :goto_1
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    if-nez v9, :cond_5

    .line 1329
    invoke-virtual {p0, v2}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object/from16 v10, p2

    .line 1327
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1331
    :goto_2
    sget-boolean v9, Landroid/os/Build;->MTK_HBT_SUPPORT:Z

    if-eqz v9, :cond_a

    .line 1332
    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v9, -0x4

    if-eqz v8, :cond_9

    .line 1338
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    .line 1341
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v12

    .line 1342
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v8

    .line 1340
    invoke-static {v12, v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_7

    .line 1345
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v12

    .line 1346
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v11

    .line 1344
    invoke-static {v12, v11}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 1349
    :goto_4
    invoke-static {v6, v8, v11, v3}, Lcom/mediatek/server/pm/hbtpackage/HBTPackage;->HBTcheckInstall(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_8

    .line 1358
    iget v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mHbtInstallCount:I

    goto :goto_5

    .line 1353
    :cond_8
    const-string p0, "HBT: ABI check error"

    invoke-static {p0, v9}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 1334
    :cond_9
    const-string p0, "HBT: NewPkgSetting is null"

    invoke-static {p0, v9}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 1361
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1362
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    move-object/from16 v4, p3

    .line 1361
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isArchived()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1368
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1370
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    .line 1371
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    .line 1369
    invoke-static {v3, v6, v8, v9, v11}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitles(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/InstallSource;I[I)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1373
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_6

    .line 1379
    :cond_b
    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setResponsibleInstallerTitles(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1374
    :cond_c
    :goto_6
    const-string p0, "Failed to obtain the responsible installer info"

    const/16 v0, -0x27

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    return v5

    .line 1364
    :goto_7
    const-string v0, "Scanning Failed."

    invoke-virtual {v2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return v5

    :cond_d
    return v3
.end method

.method public final scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .locals 26

    and-int/lit8 v0, p2, 0x10

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    move/from16 v16, v15

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 4323
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v5

    .line 4325
    iget-object v2, v5, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4326
    iget-object v3, v5, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    move/from16 v17, v15

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_3

    .line 4331
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4335
    :goto_3
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 4336
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v18

    if-eqz v16, :cond_4

    if-nez v17, :cond_4

    .line 4337
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4338
    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4342
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inconsistent package setting of updated system app for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". To recover it, enable the system app and install it as non-updated system app."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_15

    .line 4347
    :cond_4
    :goto_4
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_5

    move/from16 v19, v15

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    .line 4350
    :goto_5
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v6, :cond_6

    if-eqz v19, :cond_6

    .line 4351
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatedPkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    :cond_6
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v6, v1, v3, v2}, Lcom/mediatek/server/pm/PmsExt;->needSkipScanning(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4356
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x0

    return-object v0

    :cond_7
    if-eqz v16, :cond_8

    if-eqz v19, :cond_8

    .line 4360
    :try_start_1
    new-instance v6, Lcom/android/server/pm/ScanRequest;

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4361
    invoke-virtual {v7, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-boolean v11, v5, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x0

    move-object v9, v4

    move-object v4, v3

    const/4 v3, 0x0

    move-object v0, v6

    const/4 v6, 0x0

    move-object v10, v2

    move-object v2, v7

    const/4 v7, 0x0

    move-object v12, v5

    move-object v5, v8

    const/4 v8, 0x0

    move-object/from16 v14, p0

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v21, v12

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    :try_start_2
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 4367
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4368
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 4367
    invoke-static {v1, v10, v2, v15}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 4369
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    const-wide/16 v5, -0x1

    .line 4370
    invoke-static {v0, v3, v2, v5, v6}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    .line 4372
    iget-boolean v2, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_9

    .line 4374
    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->updateFrom(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :cond_8
    move/from16 v10, p3

    move-object v14, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v21, v5

    move-object v4, v3

    .line 4377
    :cond_9
    :goto_6
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v17, :cond_a

    .line 4380
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v15

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-eqz v17, :cond_b

    .line 4382
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-lez v2, :cond_b

    move v6, v15

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    if-eqz v17, :cond_c

    move-object/from16 v12, v21

    .line 4383
    iget-object v2, v12, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v12, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-eq v2, v3, :cond_c

    move v7, v15

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    :goto_9
    if-eqz v16, :cond_e

    if-eqz v19, :cond_e

    if-eqz v0, :cond_e

    if-nez v6, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    move v0, v15

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_a
    const/4 v8, 0x5

    if-eqz v0, :cond_f

    .line 4397
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4399
    :try_start_3
    iget-object v3, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4400
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package updated; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4404
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4405
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4406
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4407
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4408
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4402
    invoke-static {v8, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4410
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    .line 4411
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4412
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v9

    .line 4413
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v11

    .line 4412
    invoke-static {v9, v11}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4410
    invoke-virtual {v2, v3, v5, v9}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 4414
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 4415
    :try_start_4
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4416
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_b

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    .line 4400
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :cond_f
    :goto_b
    if-eqz v16, :cond_13

    if-eqz v19, :cond_13

    if-nez v0, :cond_13

    .line 4428
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/pm/InstallPackageHelper;->needSignatureMatchToSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4429
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    const/4 v9, 0x0

    .line 4431
    invoke-static {v0, v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 4433
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_10

    .line 4437
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    goto :goto_c

    .line 4434
    :cond_10
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during scanPackageForInitLI"

    .line 4435
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 4445
    :cond_11
    :goto_c
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 4446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4447
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4448
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ignored: updated version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_12

    .line 4449
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_12
    const-string/jumbo v2, "unknown"

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " better than this "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4450
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xc

    .line 4446
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    :cond_13
    const/4 v9, 0x0

    if-eqz v16, :cond_14

    move/from16 v3, v18

    goto :goto_e

    :cond_14
    if-eqz v17, :cond_15

    .line 4459
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/pm/InstallPackageHelper;->needSignatureMatchToSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v3, v15

    goto :goto_e

    :cond_15
    move v3, v9

    .line 4460
    :goto_e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    if-eqz v0, :cond_16

    if-eqz v3, :cond_16

    .line 4461
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force collect certificate of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    :cond_16
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4468
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4469
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isPreNMR1Upgrade()Z

    move-result v5

    move/from16 v4, v16

    move-object/from16 v0, v22

    .line 4467
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ScanPackageUtils;->collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V

    .line 4472
    invoke-virtual {v14, v0, v1}, Lcom/android/server/pm/InstallPackageHelper;->maybeClearProfilesForUpgradesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    if-eqz v4, :cond_1b

    if-nez v19, :cond_1b

    if-eqz v17, :cond_1b

    .line 4482
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4484
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4485
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4487
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4488
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/16 v5, 0x8

    .line 4487
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package signature mismatch; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4490
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4493
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4494
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v21, "scanPackageInternalLI"

    const/16 v22, 0xd

    const/16 v23, 0x0

    const/16 v20, -0x1

    move-object/from16 v18, v0

    .line 4493
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    .line 4497
    :try_start_7
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 4498
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    iget-object v3, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4499
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v22

    new-instance v24, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v0

    .line 4497
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_1b

    .line 4500
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_17

    .line 4493
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_f
    throw v1

    :cond_18
    if-nez v6, :cond_1a

    if-eqz v7, :cond_19

    goto :goto_10

    .line 4525
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package disabled; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4528
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4529
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; new: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4531
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 4525
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v8, v15

    goto :goto_12

    .line 4509
    :cond_1a
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package enabled; name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4511
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4515
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4509
    invoke-static {v8, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 4516
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    .line 4517
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v0

    .line 4518
    invoke-static {v6, v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4516
    invoke-virtual {v2, v3, v5, v0}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    :cond_1b
    :goto_11
    move v8, v9

    :goto_12
    const/high16 v0, 0x4000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1c
    move v15, v9

    .line 4546
    :goto_13
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v0, :cond_1d

    if-eqz v4, :cond_1d

    if-nez v17, :cond_1d

    if-nez v15, :cond_1d

    .line 4550
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4552
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4553
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 4554
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4555
    invoke-static {v1}, Lcom/android/server/pm/InstallPackageHelper;->hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/high16 v0, 0x8000000

    or-int/2addr v0, v10

    goto :goto_14

    :cond_1d
    move v0, v10

    .line 4561
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0x2

    const/4 v7, 0x0

    move/from16 v2, p2

    move-object/from16 v6, p4

    move-object v0, v14

    .line 4562
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    .line 4564
    new-instance v1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4377
    :goto_15
    :try_start_9
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 4286
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v6

    .line 4288
    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 4289
    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_0

    .line 4293
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v0

    :goto_0
    move-object/from16 v5, p1

    move/from16 v1, p3

    move-object/from16 v4, p6

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4298
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->adjustScanFlags(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v8

    move-object v14, v0

    move-object v1, v5

    .line 4300
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4301
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 4300
    invoke-static {v1, v8, v0, v7}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    .line 4303
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v15

    move/from16 v9, p2

    .line 4304
    :try_start_0
    invoke-virtual {v14, v1, v9, v8}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 4305
    new-instance v0, Lcom/android/server/pm/ScanRequest;

    move-object v4, v2

    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v5, v3

    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v7, v5

    iget-object v5, v6, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v8, v7

    iget-object v7, v6, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object v10, v8

    iget-object v8, v6, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    iget-boolean v11, v6, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object v6, v10

    move/from16 v10, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    .line 4312
    iget-object v1, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move-wide/from16 v3, p4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 4314
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final scanPackageTraced(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .locals 3

    .line 4202
    const-string/jumbo v0, "scanPackage"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4204
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4207
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4208
    throw p0
.end method

.method public sendPendingBroadcasts(Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 3067
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 3068
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 3069
    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 3070
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_0

    .line 3072
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    if-nez v6, :cond_1

    .line 3076
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 3078
    :cond_1
    :try_start_1
    new-array v5, v6, [Ljava/lang/String;

    .line 3079
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 3080
    new-array v6, v6, [I

    move v8, v4

    move v9, v8

    :goto_1
    if-ge v8, v3, :cond_4

    .line 3084
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 3086
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 3087
    invoke-static {v11}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v12

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_3

    .line 3089
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v5, v9

    .line 3090
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v7, v9

    .line 3091
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    aget-object v15, v5, v9

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 3093
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v14

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    goto :goto_3

    :cond_2
    const/4 v14, -0x1

    .line 3094
    :goto_3
    aput v14, v6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3099
    :cond_4
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->clear()V

    .line 3100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3101
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    :goto_4
    if-ge v4, v9, :cond_5

    .line 3104
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    aget-object v12, v5, v4

    aget-object v14, v7, v4

    aget v15, v6, v4

    const/16 v16, 0x0

    const/4 v13, 0x1

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void

    .line 3100
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final setPackageInstalledForSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;[I[IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3614
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 3615
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_6

    .line 3620
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_1

    .line 3621
    const-string v8, "PackageManager"

    const-string v9, "Propagating install state across reinstall"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 3623
    :cond_1
    :goto_1
    array-length v8, v1

    move v9, v6

    move v10, v9

    :goto_2
    if-ge v9, v8, :cond_5

    aget v11, v1, v9

    .line 3624
    invoke-static {v2, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v12

    .line 3625
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v13, :cond_2

    .line 3626
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    :cond_2
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v13

    if-eq v12, v13, :cond_3

    move v10, v5

    .line 3631
    :cond_3
    invoke-virtual {v4, v12, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v12, :cond_4

    .line 3633
    invoke-virtual {v4, v6, v11}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3638
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    if-eqz v10, :cond_6

    .line 3640
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 3646
    :cond_6
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v5, -0x1

    move-object/from16 v8, p1

    invoke-interface {v2, v8, v5, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    .line 3649
    array-length v2, v1

    move v4, v6

    :goto_3
    if-ge v4, v2, :cond_8

    aget v5, v1, v4

    if-eqz v7, :cond_7

    .line 3651
    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v5, v6}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    if-eqz p4, :cond_9

    .line 3657
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 3659
    :cond_9
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final updateSettingsInternalLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    .line 2589
    const-string/jumbo v1, "updateSettingsInternal"

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2591
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2592
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object v1

    .line 2593
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getInstallReason()I

    move-result v11

    .line 2594
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2596
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package installed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_1

    const/4 v4, -0x2

    if-eq v2, v4, :cond_1

    .line 2598
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2599
    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist or has been removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x26

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    return-void

    .line 2605
    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v13

    .line 2609
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 2611
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    const/4 v15, 0x0

    if-eqz v4, :cond_8

    .line 2612
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v4, :cond_2

    .line 2613
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Implicitly enabling system package on upgrade: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 2617
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2618
    array-length v4, v1

    move v9, v15

    :goto_1
    if-ge v9, v4, :cond_5

    aget v10, v1, v9

    if-eq v2, v12, :cond_3

    if-ne v2, v10, :cond_4

    .line 2620
    :cond_3
    invoke-virtual {v5, v15, v10, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 2627
    array-length v4, v6

    move v9, v15

    :goto_2
    if-ge v9, v4, :cond_7

    aget v10, v6, v9

    .line 2628
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    .line 2630
    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v16, :cond_6

    .line 2631
    const-string v12, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "    user "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v18, v3

    .line 2633
    :goto_3
    invoke-virtual {v5, v15, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v18

    const/4 v12, -0x1

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v18, v3

    if-eqz v6, :cond_9

    .line 2640
    array-length v3, v6

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_9

    aget v9, v6, v4

    .line 2641
    invoke-virtual {v5, v9}, Lcom/android/server/pm/PackageSetting;->resetOverrideComponentLabelIcon(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v18, v3

    .line 2647
    :cond_9
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2648
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 2649
    array-length v9, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_a

    aget v12, v6, v10

    .line 2650
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_b

    goto :goto_6

    .line 2654
    :cond_b
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2655
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2654
    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    if-nez v14, :cond_c

    goto :goto_6

    .line 2659
    :cond_c
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2660
    invoke-virtual {v14, v12}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v14

    .line 2659
    invoke-virtual {v5, v15, v14, v12}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    const/4 v15, 0x1

    .line 2669
    invoke-virtual {v5, v15, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2670
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 2671
    invoke-virtual {v5, v1, v2, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 2675
    :cond_e
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v1, v5, v2}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    goto :goto_c

    :cond_f
    if-eqz v6, :cond_15

    .line 2679
    array-length v3, v6

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_15

    aget v9, v6, v4

    .line 2685
    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    .line 2687
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_install_apps"

    .line 2688
    invoke-virtual {v12, v9, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_debugging_features"

    .line 2690
    invoke-virtual {v12, v9, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v12, 0x1

    :goto_9
    if-nez v10, :cond_12

    if-nez v12, :cond_13

    :cond_12
    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    .line 2702
    invoke-virtual {v5, v10, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_b

    .line 2693
    :goto_a
    invoke-virtual {v5, v15, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2694
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->isApplicationEnabledSettingPersistent()Z

    move-result v12

    if-nez v12, :cond_14

    .line 2695
    invoke-virtual {v5, v10, v9, v7}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 2699
    :cond_14
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v10, v5, v9}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2707
    :cond_15
    :goto_c
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 2710
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    move-object/from16 v4, p1

    move-object/from16 v3, v18

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/server/pm/PmsExt;->updatePackageSettings(ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[ILjava/lang/String;)V

    .line 2714
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2715
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2716
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_16

    .line 2718
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v7, :cond_16

    .line 2721
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 2723
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 2724
    invoke-virtual {v5, v12, v10}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2725
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 2728
    :cond_16
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 2729
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    .line 2730
    :goto_e
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_17

    .line 2733
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 2735
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2736
    invoke-virtual {v5, v10, v9}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_17
    const/4 v7, -0x1

    if-ne v2, v7, :cond_19

    .line 2742
    array-length v7, v6

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v7, :cond_1a

    aget v10, v6, v9

    .line 2743
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 2744
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 2745
    invoke-virtual {v5, v11, v10}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 2748
    :cond_19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2749
    invoke-virtual {v5, v11, v2}, Lcom/android/server/pm/PackageSetting;->setInstallReason(II)V

    .line 2754
    :cond_1a
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v1

    .line 2755
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v7, :cond_1b

    .line 2757
    new-instance v9, Lcom/android/server/pm/IncrementalProgressListener;

    .line 2758
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v9, v10, v11}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 2757
    invoke-virtual {v7, v1, v9}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 2762
    :cond_1b
    array-length v1, v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v1, :cond_1d

    aget v9, v6, v7

    .line 2763
    invoke-virtual {v5, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x0

    .line 2764
    invoke-virtual {v5, v10, v9}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_11

    :cond_1c
    const/4 v10, 0x0

    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2768
    :cond_1d
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2771
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    .line 2773
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_1f

    .line 2776
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 2777
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v17, 0x1

    .line 2779
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2778
    invoke-virtual {v5, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2781
    :cond_1e
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setPermissionStates(Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    goto :goto_13

    .line 2783
    :cond_1f
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 2786
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setPermissionStates(Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    .line 2790
    :cond_20
    :goto_13
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_21

    .line 2794
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_14

    .line 2795
    :cond_21
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v5

    :goto_14
    if-eqz v5, :cond_22

    .line 2797
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAllowlistedRestrictedPermissions(Ljava/util/List;)V

    .line 2800
    :cond_22
    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getAutoRevokePermissionsMode()I

    move-result v5

    .line 2801
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->setAutoRevokePermissionsMode(I)V

    .line 2802
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {v8}, Lcom/android/server/pm/InstallRequest;->getPreviousAppId()I

    move-result v6

    .line 2803
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v1

    .line 2802
    invoke-interface {v5, v4, v6, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    goto :goto_15

    :cond_23
    move-object/from16 v4, p1

    .line 2805
    :goto_15
    invoke-virtual {v8, v3}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    .line 2806
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/pm/InstallRequest;->setAppId(I)V

    .line 2807
    invoke-virtual {v8, v4}, Lcom/android/server/pm/InstallRequest;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V

    const/4 v15, 0x1

    .line 2808
    invoke-virtual {v8, v15}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 2810
    const-string/jumbo v1, "writeSettings"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2811
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 2812
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2813
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2815
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 2813
    :goto_16
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final updateSettingsLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 2584
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->updateSettingsInternalLI(Lcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public final verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 6

    .line 4669
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PackageManager"

    if-nez v0, :cond_0

    .line 4670
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package not in system partition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4670
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4674
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4676
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": old package still exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4675
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method public verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .locals 9

    const/high16 v0, 0x20000

    and-int/2addr v0, p4

    if-eqz v0, :cond_0

    .line 2877
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2881
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 2882
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/16 v7, -0x79

    if-nez v2, :cond_2

    cmp-long p0, p2, v5

    if-eqz p0, :cond_1

    .line 2886
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but package is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2889
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2890
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 2895
    :cond_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2903
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    cmp-long v5, p2, v5

    if-eqz v5, :cond_4

    if-nez v8, :cond_3

    .line 2907
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but package is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2910
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2911
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2915
    :cond_3
    :try_start_3
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_4

    .line 2916
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Required installed version code was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " but actual installed version is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2920
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2921
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :cond_4
    const/16 p2, -0x19

    if-nez v8, :cond_5

    .line 2931
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isDebuggable()Z

    move-result p0

    .line 2930
    invoke-static {p4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p0, :cond_8

    .line 2935
    :try_start_5
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 2937
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade detected on app uninstalled with DELETE_KEEP_DATA: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2939
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2940
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2946
    :cond_5
    :try_start_7
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result p3

    if-nez p3, :cond_8

    .line 2948
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result p3

    .line 2947
    invoke-static {p4, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p3, :cond_6

    .line 2951
    :try_start_8
    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 2953
    :try_start_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade detected: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2954
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2955
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2958
    :cond_6
    :try_start_a
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2961
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2964
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 2966
    :cond_7
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p0, :cond_8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez p0, :cond_8

    .line 2969
    :try_start_b
    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 2971
    :try_start_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "System app: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be downgraded to older than its preloaded version on the system image. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2975
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2976
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 2982
    :cond_8
    :goto_0
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2983
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2982
    :goto_1
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final verifyReplacingVersionCodeForApex(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .locals 8

    .line 2988
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 2990
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/32 v1, 0x40000000

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2992
    const-string v1, "PackageManager"

    if-nez p0, :cond_0

    .line 2993
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to install new APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2994
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x17

    .line 2995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 2998
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, p2, v6

    if-eqz v2, :cond_1

    cmp-long v2, v4, p2

    if-eqz v2, :cond_1

    .line 3001
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installed version of APEX package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match required. Active version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " required: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3004
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x79

    .line 3005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3008
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    move v3, p2

    .line 3010
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide p0

    .line 3011
    invoke-static {p4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(IZ)Z

    move-result p3

    if-nez p3, :cond_3

    cmp-long p3, p0, v4

    if-gez p3, :cond_3

    .line 3013
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade of APEX package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed. Active version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3016
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x19

    .line 3017
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 3020
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
