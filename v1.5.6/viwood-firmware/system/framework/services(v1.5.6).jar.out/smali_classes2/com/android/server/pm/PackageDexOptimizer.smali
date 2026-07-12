.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

.field public final mContext:Landroid/content/Context;

.field public final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 148
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageDexOptimizer$1;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 173
    iput-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 175
    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 177
    invoke-interface {p1, p4}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object p2

    const/4 p3, 0x1

    .line 178
    invoke-virtual {p2, p3, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    return-void
.end method

.method public static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 825
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final acquireWakeLockLI(I)J
    .locals 2

    .line 533
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 537
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea600

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    return-wide p0
.end method

.method public adjustDexoptFlags(I)I
    .locals 0

    .line 0
    return p1
.end method

.method public adjustDexoptNeeded(I)I
    .locals 0

    .line 0
    return p1
.end method

.method public final analyseProfiles(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 795
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0
.end method

.method public canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    .line 184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 194
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 202
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 204
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isOatArtifactDeletionEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final compilerFilterDependsOnProfiles(Ljava/lang/String;)Z
    .locals 0

    .line 775
    const-string p0, "-profile"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 475
    invoke-virtual {v0, v11, v10}, Lcom/android/server/pm/PackageDexOptimizer;->getPackageOatDirIfSupported(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    .line 477
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v5, p7

    move/from16 v7, p11

    move-object v9, v8

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I

    move-result v7

    move-object v8, v9

    .line 479
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    .line 483
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt (dexoptNeeded="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") on: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    .line 485
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " targetFilter="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " oatDir="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " classLoaderContext="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    const-string v12, "PackageDexOptimizer"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 495
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v13

    .line 496
    invoke-virtual {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v2

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v11

    .line 499
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v15

    if-eqz p13, :cond_1

    const/4 v3, 0x1

    :cond_1
    move/from16 v10, p14

    .line 500
    invoke-virtual {v0, v10, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x0

    move-object/from16 v3, p3

    move-object/from16 v1, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object v10, v4

    move-object/from16 v21, v12

    const/16 p1, 0x1

    move-object/from16 v12, p7

    move/from16 v4, p9

    .line 496
    :try_start_1
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v19

    long-to-int v2, v4

    int-to-long v4, v2

    .line 506
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    .line 512
    iget-object v0, v0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return p1

    :catch_1
    move-exception v0

    move-object/from16 v21, v12

    .line 517
    :goto_1
    const-string v1, "Failed to dexopt"

    move-object/from16 v2, v21

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public final getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 524
    const-string p0, "-dm"

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 525
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDexFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .locals 8

    .line 660
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    .line 661
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    .line 662
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v4

    move-object v0, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 660
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public final getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .locals 6

    .line 678
    invoke-static {p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    .line 679
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move p6, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p6, v0

    :goto_1
    if-eqz p5, :cond_2

    const/16 v2, 0x10

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-nez p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    const/16 p2, 0x400

    .line 691
    :goto_3
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    if-eqz p5, :cond_6

    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 707
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    if-eqz p6, :cond_7

    goto :goto_6

    :cond_7
    move v4, v1

    :goto_6
    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_7

    :cond_8
    move p1, v1

    :goto_7
    or-int/2addr p1, v4

    or-int/2addr p1, v2

    .line 712
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result p3

    if-eqz p3, :cond_9

    const/16 p3, 0x8

    goto :goto_8

    :cond_9
    move p3, v1

    :goto_8
    or-int/2addr p1, p3

    .line 713
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result p3

    if-eqz p3, :cond_a

    const/16 p3, 0x200

    goto :goto_9

    :cond_a
    move p3, v1

    :goto_9
    or-int/2addr p1, p3

    if-eqz v3, :cond_b

    const/16 p3, 0x800

    goto :goto_a

    :cond_b
    move p3, v1

    :goto_a
    or-int/2addr p1, p3

    if-eqz v0, :cond_c

    const/16 p3, 0x1000

    goto :goto_b

    :cond_c
    move p3, v1

    :goto_b
    or-int/2addr p1, p3

    .line 716
    invoke-virtual {p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallForRestore()Z

    move-result p3

    if-eqz p3, :cond_d

    const/16 v1, 0x2000

    :cond_d
    or-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result p0

    return p0
.end method

.method public final getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I
    .locals 4

    .line 730
    const-string v1, "PackageDexOptimizer"

    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit8 v0, p8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_1

    move p8, v3

    goto :goto_1

    :cond_1
    move p8, v2

    :goto_1
    if-ne p6, v3, :cond_2

    move v2, v3

    :cond_2
    if-nez v2, :cond_3

    if-eqz p8, :cond_3

    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {p0, p1, p2, p3, p9}, Lcom/android/server/pm/PackageDexOptimizer;->isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    const/4 p1, -0x1

    .line 757
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageDexOptimizer;->compilerFilterDependsOnProfiles(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_4

    const/4 p8, 0x3

    if-ne p6, p8, :cond_4

    .line 759
    const-string/jumbo p4, "verify"

    :cond_4
    move p6, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 761
    :goto_3
    invoke-static/range {p2 .. p7}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result p0

    return p0

    .line 767
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected exception when calling dexoptNeeded on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    .line 764
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IOException reading apk: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    .line 731
    :cond_5
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0
.end method

.method public final getInstallerLI()Lcom/android/server/pm/Installer;
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public final getPackageOatDirIfSupported(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 0

    .line 813
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 816
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 820
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRealCompilerFilter(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 622
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 624
    invoke-static {p2}, Ldalvik/system/DexFile;->isOptimizedCompilerFilter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "verify"

    return-object p0

    :cond_0
    return-object p2

    .line 638
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-object p2

    .line 641
    :cond_3
    :goto_0
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAppImageEnabled()Z
    .locals 1

    .line 648
    const-string p0, "dalvik.vm.appimageformat"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 781
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0
.end method

.method public performDexOpt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4

    .line 224
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 228
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 236
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    :try_start_2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1
    return p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 241
    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 242
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    .line 235
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0

    .line 229
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dexopt for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has invalid uid."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "System server dexopting should be done via odrefresh"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performDexOptLI(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getNonNativeUsesLibraryInfos()Ljava/util/List;

    move-result-object v2

    if-eqz p3, :cond_0

    move-object/from16 v3, p3

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 264
    :goto_0
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 265
    invoke-static {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v6

    .line 267
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Well this is awkward; package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " had UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 269
    const-string v5, "PackageDexOptimizer"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x270f

    :cond_1
    move v9, v3

    .line 277
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v8, v3, [Z

    .line 278
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v3

    const/16 v16, 0x0

    aput-boolean v3, v8, v16

    const/16 v17, 0x1

    move/from16 v3, v17

    .line 279
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 280
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move/from16 v4, v17

    goto :goto_2

    :cond_2
    move/from16 v4, v16

    :goto_2
    aput-boolean v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_3
    invoke-static {v1, v2, v8}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v10

    .line 286
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, v10

    if-eq v2, v3, :cond_5

    .line 287
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent information between AndroidPackage and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pkg.getBaseCodePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg.getSplitCodePaths="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    .line 293
    const-string/jumbo v0, "null"

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move/from16 v11, v16

    move v12, v11

    .line 297
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1a

    .line 299
    aget-boolean v2, v8, v11

    if-nez v2, :cond_6

    goto :goto_5

    .line 302
    :cond_6
    aget-object v2, v10, v11

    if-eqz v2, :cond_19

    .line 309
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 310
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 313
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_5
    move-object/from16 p3, v6

    move v2, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 p5, v15

    move-object/from16 v10, p4

    goto/16 :goto_12

    :cond_7
    if-nez v11, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    .line 319
    :cond_8
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v11, -0x1

    aget-object v3, v3, v4

    .line 318
    :goto_6
    invoke-static {v3}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v4

    .line 334
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-static {v5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v4, :cond_9

    .line 339
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v4

    const/4 v14, 0x3

    if-eq v4, v14, :cond_9

    move/from16 v4, v17

    goto :goto_7

    :cond_9
    move/from16 v4, v16

    .line 342
    :goto_7
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v14

    if-nez v14, :cond_b

    if-eqz v4, :cond_a

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v14, 0x0

    goto :goto_a

    .line 343
    :cond_b
    :goto_9
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_c

    goto :goto_8

    .line 345
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 352
    :goto_a
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v18

    move-object/from16 p3, v6

    if-eqz v18, :cond_d

    .line 354
    invoke-virtual {v0, v1, v9, v3, v5}, Lcom/android/server/pm/PackageDexOptimizer;->analyseProfiles(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I

    move-result v18

    goto :goto_b

    :cond_d
    const/16 v18, 0x2

    :goto_b
    if-eqz v4, :cond_f

    .line 359
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloud-"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    :try_start_1
    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/server/pm/PackageDexOptimizer;->prepareCloudProfile(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, v2

    goto :goto_c

    :cond_e
    const/16 v3, 0xe

    .line 365
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_c
    move-object/from16 v31, v2

    const/4 v6, 0x2

    move/from16 v18, v12

    move-object/from16 v2, p2

    :goto_d
    move-object v12, v3

    move-object v3, v5

    move-object/from16 v5, p6

    goto :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_f
    move/from16 v6, v18

    const/16 v31, 0x0

    move-object/from16 v2, p2

    move/from16 v18, v12

    goto :goto_d

    .line 379
    :goto_e
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    move-object v5, v3

    .line 382
    array-length v0, v15

    move/from16 v1, v16

    :goto_f
    if-ge v1, v0, :cond_16

    aget-object v29, v15, v1

    move v2, v7

    .line 383
    aget-object v7, v10, v11

    move v3, v11

    .line 385
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v11

    move-object/from16 v25, v14

    .line 386
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v14

    move-object/from16 v2, p2

    move/from16 v35, v0

    move/from16 v36, v1

    move/from16 v34, v3

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object v3, v13

    move-object/from16 p5, v15

    move/from16 v37, v18

    move-object/from16 v13, v25

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p4

    move v8, v4

    move-object/from16 v4, v29

    .line 383
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v29, v4

    move-object/from16 v25, v13

    .line 388
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z

    if-eqz v1, :cond_10

    if-eqz v10, :cond_10

    .line 391
    const-string v1, "dex2oat-metrics"

    const-wide/16 v13, 0x4000

    invoke-static {v13, v14, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v19

    .line 394
    iget-object v1, v0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 398
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v22

    .line 399
    invoke-virtual {v10, v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->getCompileTime(Ljava/lang/String;)J

    move-result-wide v23

    .line 401
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v26

    .line 403
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-static {v3, v2, v4}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getApkType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    move-object/from16 v18, v1

    move-object/from16 v30, v3

    move-object/from16 v21, v5

    .line 394
    invoke-static/range {v18 .. v30}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->writeStatsLog(Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;JLjava/lang/String;IJLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v5, v21

    move/from16 v1, v27

    move-object/from16 v3, v30

    .line 408
    :try_start_4
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v2, v31

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_10
    move/from16 v1, v27

    :goto_10
    if-ne v1, v15, :cond_14

    move/from16 v4, v37

    const/4 v2, -0x1

    if-ne v4, v2, :cond_12

    if-nez v31, :cond_11

    return v4

    .line 433
    :cond_11
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_12
    if-nez v31, :cond_13

    return v1

    :cond_13
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :cond_14
    move/from16 v4, v37

    const/4 v2, -0x1

    if-eq v4, v2, :cond_15

    if-eqz v1, :cond_15

    move/from16 v18, v1

    goto :goto_11

    :cond_15
    move/from16 v18, v4

    :goto_11
    add-int/lit8 v1, v36, 0x1

    move-object/from16 v15, p5

    move v7, v2

    move-object v13, v3

    move v4, v8

    move-object/from16 v14, v25

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v0, v35

    goto/16 :goto_f

    :cond_16
    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 p5, v15

    move/from16 v4, v18

    move-object/from16 v10, p4

    if-nez v31, :cond_17

    move v12, v4

    :goto_12
    move/from16 v3, v34

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v15, p5

    move v7, v2

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    goto/16 :goto_4

    :cond_17
    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    :goto_13
    if-eqz v2, :cond_18

    new-instance v0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw v0

    .line 435
    :cond_18
    throw v0

    :cond_19
    move-object/from16 p3, v6

    move v3, v11

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    .line 305
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move/from16 v18, v12

    return v18
.end method

.method public final prepareCloudProfile(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p4, :cond_1

    .line 451
    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->isIsolated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 452
    :cond_0
    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final printDexoptFlags(I)Ljava/lang/String;
    .locals 2

    .line 833
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 836
    const-string v0, "boot_complete"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 839
    const-string v0, "debuggable"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 842
    const-string/jumbo v0, "profile_guided"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 845
    const-string/jumbo v0, "public"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 848
    const-string/jumbo v0, "secondary"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 851
    const-string v0, "force"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 854
    const-string/jumbo v0, "storage_ce"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7

    .line 857
    const-string/jumbo v0, "storage_de"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    .line 860
    const-string v0, "idle_background_job"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v0, 0x400

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_9

    .line 863
    const-string p1, "enable_hidden_api_checks"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_9
    const-string p1, ","

    invoke-static {p1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final releaseWakeLockLI(J)V
    .locals 3

    .line 543
    const-string v0, "PackageDexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_2

    .line 547
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 550
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/32 p1, 0xea600

    cmp-long p1, v1, p1

    if-ltz p1, :cond_2

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WakeLock "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time out. Operation took "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms. Thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 557
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while releasing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lock"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public systemReady()V
    .locals 1

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    return-void
.end method
