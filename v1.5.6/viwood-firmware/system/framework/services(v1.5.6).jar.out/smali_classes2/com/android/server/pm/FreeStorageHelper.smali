.class public final Lcom/android/server/pm/FreeStorageHelper;
.super Ljava/lang/Object;
.source "FreeStorageHelper.java"


# static fields
.field public static final FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnableFreeCacheV2:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4

    .line 76
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "fw.free_cache_v2"

    const/4 v3, 0x1

    .line 77
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/FreeStorageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/Context;Z)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 70
    iput-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 71
    iput-object p3, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    return-void
.end method


# virtual methods
.method public freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 191
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    .line 194
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long/2addr v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v2, v3, v0}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    .line 196
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object p0

    .line 200
    iget p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 p3, -0x6

    if-ne p2, p3, :cond_0

    const/4 p2, -0x1

    .line 202
    iput p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 205
    :cond_0
    :goto_0
    iget p0, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 206
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    return p0

    :goto_1
    if-eqz v4, :cond_2

    .line 194
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    :goto_3
    const-string p2, "PackageManager"

    const-string p3, "Failed to free cache"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return p1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .locals 10

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 87
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-ltz v0, :cond_0

    goto/16 :goto_7

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 91
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x1

    and-int/2addr p4, v0

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 97
    const-string/jumbo p4, "persist.sys.preloads.file_cache_expired"

    .line 98
    invoke-static {p4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 99
    :cond_2
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 105
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object p4

    invoke-static {p4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_4

    goto/16 :goto_7

    .line 110
    :cond_4
    :try_start_0
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p4
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v2, 0x100

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_6

    .line 112
    :try_start_2
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz p4, :cond_5

    .line 110
    :try_start_3
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p4, v0

    :try_start_4
    invoke-virtual {v2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 114
    :catch_0
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_7

    goto/16 :goto_7

    .line 116
    :cond_7
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 117
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v4

    if-eqz v3, :cond_8

    .line 119
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v0, "unused_static_shared_lib_min_cache_period"

    sget-wide v6, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {p4, v0, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v6, p2

    .line 119
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z

    move-result p2

    if-eqz p2, :cond_9

    goto/16 :goto_7

    :cond_8
    move-wide v6, p2

    :cond_9
    const-wide/32 p2, 0x240c8400

    if-eqz v3, :cond_a

    .line 131
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p4, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v0, "installed_instant_app_min_cache_period"

    .line 132
    invoke-static {p4, v0, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 131
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result p4

    if-eqz p4, :cond_a

    goto/16 :goto_7

    .line 142
    :cond_a
    :try_start_5
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p4
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 143
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v2, 0x300

    invoke-virtual {v0, p1, v6, v7, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p4, :cond_c

    .line 145
    :try_start_7
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz p4, :cond_b

    .line 142
    :try_start_8
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p4, v0

    :try_start_9
    invoke-virtual {v2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v2
    :try_end_9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 147
    :catch_1
    :cond_c
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    cmp-long p4, v8, v6

    if-ltz p4, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_e

    .line 154
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p4, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v0, "uninstalled_instant_app_min_cache_period"

    .line 155
    invoke-static {p4, v0, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 154
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_7

    .line 165
    :cond_e
    iget-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p3, Landroid/os/storage/StorageManagerInternal;

    .line 166
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManagerInternal;

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p3

    sub-long p3, v6, p3

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_f

    .line 169
    invoke-virtual {p2, p1, p3, p4}, Landroid/os/storage/StorageManagerInternal;->freeCache(Ljava/lang/String;J)V

    .line 173
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->freeStageDirs(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    move-wide v6, p2

    .line 175
    :try_start_a
    iget-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2
    :try_end_a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a .. :try_end_a} :catch_2

    .line 176
    :try_start_b
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, v6, v7, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz p2, :cond_12

    .line 177
    :try_start_c
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object p0, v0

    if-eqz p2, :cond_11

    .line 175
    :try_start_d
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    :try_start_e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_5
    throw p0
    :try_end_e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e .. :try_end_e} :catch_2

    .line 180
    :catch_2
    :cond_12
    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0

    cmp-long p0, p0, v6

    if-ltz p0, :cond_13

    :goto_7
    return-void

    .line 182
    :cond_13
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to free "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on storage device at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performFstrimIfNeeded()V
    .locals 8

    .line 214
    const-string v0, "Only the system can request fstrim"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 218
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const-string v1, "PackageManager"

    if-eqz v0, :cond_0

    .line 221
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "fstrim_mandatory_interval"

    const-wide/32 v3, 0xf731400

    .line 221
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No disk maintenance in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; running immediately"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    return-void

    .line 237
    :cond_0
    const-string/jumbo p0, "storageManager service unavailable!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
