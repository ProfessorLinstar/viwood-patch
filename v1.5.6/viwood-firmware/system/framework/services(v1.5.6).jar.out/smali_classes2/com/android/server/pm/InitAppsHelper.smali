.class public final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "InitAppsHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mCachedSystemApps:I

.field public final mDirsToScanAsSystem:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mExpectingBetter:Landroid/util/ArrayMap;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mIsDeviceUpgrading:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

.field public final mScanFlags:I

.field public final mStubSystemApps:Ljava/util/List;

.field public mSystemPackagesCount:I

.field public final mSystemParseFlags:I

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemScanFlags:I

.field public mSystemScanTime:J


# direct methods
.method public static synthetic $r8$lambda$VJZW-c31uI8Yaywv2gsqfy0KEng(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 2

    .line 197
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 200
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 199
    invoke-interface {p0, v0, p2, p1}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$VWF6nFCGGoc9b6Gi7rkF04KUDnc(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InitAppsHelper;->lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUjG5T2nXa8xdZKlIPYCIIcrmg4(Ljava/nio/file/Path;)V
    .locals 2

    .line 243
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 245
    const-string v0, "PackageManager"

    const-string v1, "Failed to fix an installed app dir mode"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 105
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 106
    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 107
    iput-object p4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    .line 108
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getSystemScanPartitions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-nez p2, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x210

    .line 115
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p2, 0x1210

    .line 113
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 117
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 118
    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 119
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;
    .locals 6

    .line 144
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 145
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 146
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/server/pm/ScanPartition;

    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public fixInstalledAppDirMode()V
    .locals 2

    .line 240
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 240
    :try_start_3
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 249
    const-string v0, "PackageManager"

    const-string v1, "Failed to walk the app install directory to fix the modes"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final fixSystemPackages([I)V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanupDisabledPackageSettings(Ljava/util/List;[II)V

    .line 288
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/pm/InstallPackageHelper;->checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V

    .line 293
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallPackageHelper;->installSystemStubPackages(Ljava/util/List;I)V

    return-void
.end method

.method public final getApexScanPartitions()Ljava/util/List;
    .locals 3

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 133
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 134
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {v2}, Lcom/android/server/pm/InitAppsHelper;->resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDirsToScanAsSystem()Ljava/util/List;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    return-object p0
.end method

.method public getSystemScanFlags()I
    .locals 0

    .line 432
    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    return p0
.end method

.method public final getSystemScanPartitions()Ljava/util/List;
    .locals 2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getApexScanPartitions()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directories scanned as system partitions: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V
    .locals 8

    const/16 v0, 0xc08

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 259
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 262
    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->fixInstalledAppDirMode()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object v2

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v4, v0, 0x80

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 269
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p0

    .line 270
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {v1, p2}, Lcom/android/server/pm/InitAppsHelper;->fixSystemPackages([I)V

    .line 275
    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/InitAppsHelper;->logNonSystemAppScanningTime(J)V

    .line 276
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 277
    iget-object p0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->pruneRenamedPackagesLPw()V

    return-void

    .line 271
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not all tasks finished before calling close: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .locals 5

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InitAppsHelper;->scanApexPackagesTraced(Lcom/android/internal/pm/parsing/PackageParser2;)Ljava/util/List;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->notifyScanResult(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InitAppsHelper;->scanSystemDirs(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/mediatek/server/pm/PmsExt;->scanMoreDirLi(IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 186
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 188
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    iget-object v4, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InitAppsHelper;->updateStubSystemAppsList(Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/server/pm/InstallPackageHelper;->prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V

    .line 209
    invoke-virtual {p0, p4, p5}, Lcom/android/server/pm/InitAppsHelper;->logSystemAppsScanningTime(J)V

    return-object p1
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 2

    .line 195
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final logNonSystemAppScanningTime(J)V
    .locals 5

    .line 298
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    sub-int/2addr v0, v1

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    sub-long/2addr v1, v3

    sub-long/2addr v1, p1

    .line 302
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    sub-int/2addr p1, p2

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished scanning non-system apps. Time: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms, packageCount: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , timePerPackage: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    int-to-long v3, p1

    .line 306
    div-long v3, v1, v3

    :goto_0
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , cached: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 303
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean p0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    int-to-long p0, p1

    .line 310
    div-long/2addr v1, p0

    const/16 p0, 0xef

    const/16 p1, 0xe

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_1
    return-void
.end method

.method public final logSystemAppsScanningTime(J)V
    .locals 4

    .line 215
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->pruneSharedUsersLPw()V

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 220
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finished scanning system apps. Time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms, packageCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , timePerPackage: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , cached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean p1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-lez p1, :cond_1

    .line 228
    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long p0, p1

    div-long/2addr v0, p0

    const/16 p0, 0xef

    const/16 p1, 0xf

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_1
    return-void
.end method

.method public final scanApexPackagesTraced(Lcom/android/internal/pm/parsing/PackageParser2;)Ljava/util/List;
    .locals 9

    .line 158
    const-string/jumbo v0, "scanApexPackages"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getAllApexInfos()[Landroid/apex/ApexInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v6, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget-object v8, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 165
    throw p0
.end method

.method public scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 10

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanDir ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v0, 0x800000

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    or-int/lit16 p2, p2, 0x200

    :cond_0
    move v5, p2

    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    throw p0
.end method

.method public final scanSystemDirs(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 25

    move-object/from16 v0, p0

    .line 323
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_0
    if-ltz v8, :cond_1

    .line 330
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanPartition;

    .line 332
    sget-object v9, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v10, v1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget v12, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v3, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v13, v2, v3

    const-wide/16 v14, 0x0

    const/4 v11, 0x1

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    invoke-virtual/range {v9 .. v17}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IZIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 335
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v5, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v4, v5

    iget-object v6, v1, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    move-object/from16 v5, p2

    move-object v1, v3

    move v3, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 344
    :cond_1
    sget-object v16, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const v8, 0x20001

    or-int v19, v2, v8

    const-wide/16 v20, 0x0

    const/16 v17, 0xc

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move/from16 v18, v1

    invoke-virtual/range {v16 .. v23}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 348
    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v1, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int v3, v1, v8

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 351
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    sget-object v16, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const v3, 0xa0001

    or-int v19, v2, v3

    const-wide/16 v20, 0x0

    const/16 v17, 0xd

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move/from16 v18, v1

    invoke-virtual/range {v16 .. v23}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 361
    sget-object v16, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int v19, v2, v3

    const/16 v17, 0x2

    move/from16 v18, v1

    invoke-virtual/range {v16 .. v23}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 365
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    move v9, v1

    :goto_2
    if-ge v9, v7, :cond_3

    .line 366
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/ScanPartition;

    .line 368
    sget-object v16, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, v10, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iget v5, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v20, v3, v5

    const-wide/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move/from16 v17, v1

    move/from16 v19, v2

    invoke-virtual/range {v16 .. v24}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IZIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 371
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v1

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/2addr v3, v4

    iget v4, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v3, v4

    iget-object v6, v10, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 378
    :cond_2
    sget-object v16, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, v10, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v4, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v20, v3, v4

    const-wide/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move/from16 v17, v1

    move/from16 v19, v2

    invoke-virtual/range {v16 .. v24}, Lcom/mediatek/server/pm/PmsExt;->scanDirLI(IZIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 381
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getAppFolder()Ljava/io/File;

    move-result-object v1

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v4, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v3, v4

    iget-object v6, v10, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 388
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/viwoods"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/2addr v3, v8

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    return-void

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load frameworks package; check log for warnings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateStubSystemAppsList(Ljava/util/List;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 399
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
