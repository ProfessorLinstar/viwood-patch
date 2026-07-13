.class public Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "AppDataHelper.java"


# instance fields
.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$2BeLf97yLOm88wYtplb9WF4eyqo(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$EcbQ0RDhsp50zlsyfvd3o8Q6RFA(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 160
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$RIGeEJyYe5suegXcEg9XBNKTFvo(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YFf7DSMx-MyHV4nCg6MSaBHl8TQ(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppDataHelper;->lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 81
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    return-void
.end method


# virtual methods
.method public final assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 472
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 473
    const-string v0, "Package "

    if-eqz p1, :cond_4

    .line 477
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    .line 484
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or was deleted without DELETE_KEEP_DATA"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x9

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 490
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 491
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " shouldn\'t have storage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xa

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 478
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found on unknown volume "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected volume "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x8

    .line 478
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 474
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x7

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    const/high16 p2, 0x20000

    and-int/2addr p2, p3

    if-nez p2, :cond_1

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    .line 567
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 569
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p3

    array-length v2, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v7, p3, v3

    if-eqz v1, :cond_0

    .line 572
    invoke-interface {v1, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v4

    :goto_1
    move-wide v9, v4

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 574
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, p1

    move-object v5, p2

    move v8, p4

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, p1

    move-object v5, p2

    move v8, p4

    goto :goto_3

    .line 577
    :goto_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object p2, v5

    move-object p1, v6

    move p4, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1

    if-nez p1, :cond_0

    .line 584
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string v0, "Package was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 587
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    return-void
.end method

.method public clearKeystoreData(II)V
    .locals 4

    if-gez p2, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p0, v1

    .line 664
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    int-to-long v2, v2

    .line 663
    invoke-static {v0, v2, v3}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public destroyAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 1

    if-nez p1, :cond_0

    .line 592
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 595
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13

    move/from16 v1, p3

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 602
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v9, v3, v5

    if-eqz v2, :cond_0

    .line 605
    invoke-interface {v2, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v6

    :goto_1
    move-wide v11, v6

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 607
    :goto_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v8, p1

    move-object v7, p2

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 610
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_3
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/dex/DexManager;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroyAppProfilesLIF(Ljava/lang/String;)V
    .locals 1

    .line 621
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->artManagerLocalIsInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    .line 633
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/art/ArtManagerLocal;->clearAppProfiles(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 636
    :try_start_1
    const-string v0, "PackageManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    .line 638
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_2

    .line 630
    :try_start_2
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public final executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .locals 1

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 171
    const-string p1, "PackageManager"

    const-string v0, "Failed to execute pending operations"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .locals 8

    .line 504
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 510
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v7

    .line 511
    :try_start_0
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 514
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 515
    :cond_1
    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p0, v4}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo p0, "prepareAppData"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v7, :cond_2

    .line 510
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method

.method public final getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I
    .locals 6

    .line 106
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 110
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 111
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 112
    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 113
    aput v4, v1, v3

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V
    .locals 10

    .line 516
    const-string v1, "PackageManager"

    new-instance v2, Landroid/util/TimingsTraceLog;

    const-string v0, "SystemServerTimingAsync"

    const-wide/32 v3, 0x40000

    invoke-direct {v2, v0, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 518
    const-string v0, "AppDataFixup"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->fixupAppData(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 523
    const-string v3, "Trouble fixing GIDs"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 527
    const-string v0, "AppDataPrepare"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 528
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 532
    :cond_0
    new-instance v4, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v4}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 533
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 534
    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 535
    invoke-interface {v5, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 538
    invoke-interface {v5, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 539
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v7, p2

    .line 540
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object v3, p0

    move v7, p2

    :goto_2
    move-object p0, v3

    move p2, v7

    goto :goto_1

    :cond_2
    move-object v3, p0

    .line 545
    iget-object p0, v3, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p0

    .line 546
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 548
    :cond_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 549
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Deferred reconcileAppsData finished "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packages"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_4

    .line 545
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1

    :cond_5
    :goto_4
    return-void
.end method

.method public final synthetic lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p9, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create app data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but trying to recover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    const/4 v0, 0x5

    invoke-static {v0, p9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x3

    .line 252
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2, p5}, Lcom/android/server/pm/Installer;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object p8

    .line 253
    const-string p2, "Recovery succeeded!"

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    const-string p2, "Recovery failed!"

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    iget-wide p1, p8, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 260
    iget-wide p8, p8, Landroid/os/CreateAppDataResult;->deDataInode:J

    and-int/lit8 p5, p4, 0x2

    const-wide/16 v0, -0x1

    if-eqz p5, :cond_1

    cmp-long p5, p1, v0

    if-eqz p5, :cond_1

    .line 263
    iget-object p5, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p5

    .line 264
    :try_start_1
    invoke-virtual {p6, p1, p2, p3}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 265
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_1
    :goto_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2

    cmp-long p1, p8, v0

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 269
    :try_start_3
    invoke-virtual {p6, p8, p9, p3}, Lcom/android/server/pm/PackageSetting;->setDeDataInode(JI)V

    .line 270
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2
    :goto_2
    if-eqz p7, :cond_3

    .line 274
    invoke-virtual {p0, p7, p6, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    :cond_3
    return-void
.end method

.method public final synthetic lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V
    .locals 6

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/AppDataHelper;->maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    new-instance v1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    :cond_0
    return-void
.end method

.method public final maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 4

    .line 320
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 325
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, v0}, Lcom/android/server/pm/Installer;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to migrate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    .line 328
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_1
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;
    .locals 9

    .line 217
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 226
    :try_start_0
    invoke-virtual {p2, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    .line 227
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 229
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 230
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    .line 233
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v6

    .line 238
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v2, p4

    move v7, v0

    move-object v0, v3

    move v3, p5

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v6

    .line 241
    iput p3, v6, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 243
    invoke-virtual {p1, v6}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    move v5, v3

    move-object v3, v0

    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    move-object v7, p2

    move v4, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 227
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V

    return-void

    :catchall_0
    move-exception p0

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V
    .locals 8

    if-eqz p2, :cond_2

    .line 178
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping preparing app data for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 189
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .line 190
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v5, v4

    move-object v2, p1

    move v4, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 189
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 179
    :cond_2
    :goto_0
    const-string p0, "PackageManager"

    const-string p1, "Package was null!"

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public prepareAppDataContentsLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .locals 0

    if-nez p1, :cond_0

    .line 282
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "PackageManager"

    const-string p2, "Package was null!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return-void
.end method

.method public final prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .locals 2

    .line 290
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_2

    if-nez p2, :cond_0

    .line 298
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 299
    invoke-static {p2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 300
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 305
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to link native for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping preparing app data for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    new-instance v1, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v1}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 140
    array-length v8, p3

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_3

    aget v4, p3, v9

    .line 142
    invoke-static {v4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v7, v4}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    move-object v2, p1

    move v3, p2

    move v5, v0

    move-object v0, p0

    goto :goto_2

    .line 145
    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 152
    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, v6, v4, v2, v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_3

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object p0, v0

    move-object p1, v2

    move p2, v3

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 128
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public reconcileAppsData(IIZ)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 347
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 348
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    .line 350
    :try_start_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    .line 349
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0

    :cond_2
    return-void
.end method

.method public final reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v9, p3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconcileAppsData for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " migrateAppData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v11, "PackageManager"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v2, "PMS:reconcileAppsDataLI"

    invoke-virtual {v0, v2}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v13, 0x5

    .line 382
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v3, v5, v9}, Lcom/android/server/pm/Installer;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cleanup deleted dirs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 387
    :goto_2
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 388
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    .line 390
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    and-int/lit8 v2, v9, 0x2

    .line 393
    const-string v4, "Failed to destroy: "

    const-string v6, " due to: "

    const-string v7, "Destroying "

    const/16 v16, 0x0

    if-eqz v2, :cond_3

    .line 394
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 395
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yikes, someone asked us to reconcile CE storage while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was still locked; this would have caused massive data loss!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_2
    :goto_3
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 401
    array-length v8, v2

    move/from16 v13, v16

    :goto_4
    if-ge v13, v8, :cond_3

    move-object/from16 v17, v2

    aget-object v2, v17, v13

    move-object/from16 v18, v4

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 404
    :try_start_1
    invoke-virtual {v1, v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v6

    move/from16 v20, v8

    move-object/from16 v9, v18

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object v13, v7

    goto :goto_6

    :catch_1
    move-exception v0

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 408
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v6

    const/4 v6, 0x2

    move-object/from16 v19, v7

    move/from16 v20, v8

    const-wide/16 v7, 0x0

    move-object v10, v3

    move-object/from16 v9, v18

    move-object/from16 v3, p1

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object/from16 v13, v19

    :try_start_3
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v3, p1

    move-object v10, v6

    move/from16 v20, v8

    move-object/from16 v9, v18

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object v13, v7

    .line 411
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_6
    add-int/lit8 v0, v17, 0x1

    move-object v4, v9

    move-object v6, v10

    move-object v7, v13

    move-object/from16 v2, v18

    move/from16 v8, v20

    move/from16 v9, p3

    move/from16 v10, p4

    move v13, v0

    goto :goto_4

    :cond_3
    move-object v9, v4

    move-object v10, v6

    move-object v13, v7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_4

    .line 417
    invoke-static {v14}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v14

    .line 418
    array-length v2, v14

    move/from16 v4, v16

    :goto_7
    if-ge v4, v2, :cond_4

    aget-object v6, v14, v4

    move v7, v4

    .line 419
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 421
    :try_start_4
    invoke-virtual {v1, v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v17, v2

    move/from16 v18, v7

    :goto_8
    const/4 v2, 0x5

    goto :goto_a

    :catch_4
    move-exception v0

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v6, v2

    .line 425
    :try_start_5
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_6

    move v8, v6

    const/4 v6, 0x1

    move/from16 v18, v7

    move/from16 v17, v8

    const-wide/16 v7, 0x0

    :try_start_6
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v17, v6

    move/from16 v18, v7

    .line 428
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_a
    add-int/lit8 v4, v18, 0x1

    move/from16 v2, v17

    goto :goto_7

    .line 436
    :cond_4
    const-string/jumbo v0, "prepareAppDataAndMigrate"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 437
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 438
    invoke-interface {v15, v3}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v9, v16

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 441
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_5

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Odd, missing scanned package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_5
    if-eqz p5, :cond_6

    .line 449
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v6

    if-nez v6, :cond_6

    .line 450
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 454
    :cond_6
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v6, p4

    move v4, v5

    move/from16 v5, p3

    .line 455
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    add-int/lit8 v9, v9, 0x1

    :cond_7
    move/from16 v5, p2

    goto :goto_b

    .line 459
    :cond_8
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 460
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconcileAppsData finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12
.end method

.method public reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    return-void
.end method

.method public final shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 2

    .line 645
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 650
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_1

    .line 651
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    if-ltz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
