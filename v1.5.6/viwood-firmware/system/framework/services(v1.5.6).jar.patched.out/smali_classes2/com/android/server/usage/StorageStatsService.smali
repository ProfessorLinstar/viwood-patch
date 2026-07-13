.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# static fields
.field public static final DEFAULT_QUOTA:J


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCacheQuotas:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mLock:Ljava/lang/Object;

.field public final mPackage:Landroid/content/pm/PackageManager;

.field public final mStorage:Landroid/os/storage/StorageManager;

.field public final mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mStorageThresholdPercentHigh:I

.field public final mUser:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-OD1kcELpUBub63x7K_2zL62Jt0(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .locals 0

    .line 457
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$26ynPRtYS3Uj_Y-_AG7k_MFaOcA(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .locals 0

    .line 567
    invoke-interface {p2, p0, p1}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuC9-9OYCDVQiGVkOIIESEPvimo(Lcom/android/server/usage/StorageStatsService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kx9ufaJ8xB2vrPlVgrwxhzbgP-E(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .locals 0

    .line 532
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCacheQuotas(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/StorageStatsService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageStatsAugmenters(Lcom/android/server/usage/StorageStatsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageThresholdPercentHigh(Lcom/android/server/usage/StorageStatsService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateMounts(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 110
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 145
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0x14

    .line 139
    iput v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 147
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 148
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 150
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 151
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 153
    new-instance v2, Lcom/android/server/pm/Installer;

    invoke-direct {v2, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 154
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 157
    new-instance p1, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    const/16 v2, 0x65

    .line 158
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    new-instance p1, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 174
    new-instance p1, Lcom/android/server/usage/StorageStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;Lcom/android/server/usage/StorageStatsService-IA;)V

    const-class v1, Lcom/android/server/usage/StorageStatsManagerLocal;

    invoke-static {v1, p1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 176
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/android/server/usage/StorageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$2;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 192
    const-string/jumbo p0, "storage_native_boot"

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static checkCratesEnable()V
    .locals 2

    .line 796
    const-string v0, "fw.storage_crates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Storage Crate feature is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkEquals(Ljava/lang/String;JJ)V
    .locals 1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " actual "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .locals 5

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " externalCacheSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide p1, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static checkEquals(Ljava/lang/String;[J[J)V
    .locals 6

    const/4 v0, 0x0

    .line 629
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;
    .locals 6

    .line 818
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 822
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 824
    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 825
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 829
    :cond_1
    iget v4, v3, Landroid/os/storage/CrateMetadata;->uid:I

    iget-object v5, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/os/storage/CrateInfo;->copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 835
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getDefaultFlags()I
    .locals 2

    .line 621
    const-string v0, "fw.disable_quota"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    return v0
.end method

.method public static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 782
    const-string v0, "enable_cache_quota_calculation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2b

    if-eqz p3, :cond_0

    .line 223
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 225
    :cond_0
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p3

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from UID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " blocked by mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 235
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", callingUid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final computeAppArtStats(Landroid/content/pm/PackageStats;Ljava/lang/String;)V
    .locals 4

    .line 1033
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/art/ArtManagerLocal;->getArtManagedFileStats(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/ArtManagedFileStats;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 1036
    :try_start_2
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1047
    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dexoptSize:J

    const/4 p0, 0x0

    .line 1049
    invoke-virtual {p2, p0}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dexoptSize:J

    .line 1050
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->refProfSize:J

    const/4 p0, 0x1

    .line 1052
    invoke-virtual {p2, p0}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->refProfSize:J

    .line 1053
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->curProfSize:J

    const/4 p0, 0x2

    .line 1055
    invoke-virtual {p2, p0}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->curProfSize:J

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 1033
    :try_start_3
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1037
    sget-boolean p1, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-eqz p1, :cond_3

    .line 1038
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported isa \'arm\'"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1039
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Non-native isa \'arm\'"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1040
    :cond_2
    const-string p0, "StorageStatsService"

    const-string p1, "Dexopt with art service is conflict with hbt_translator"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1042
    :cond_3
    throw p0
.end method

.method public final computeAppStatsByDataTypes(Landroid/content/pm/PackageStats;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1015
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    .line 1018
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->apkSize:J

    const-string v2, ".apk"

    invoke-virtual {p0, p3, v2}, Lcom/android/server/usage/StorageStatsService;->getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->apkSize:J

    .line 1022
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dmSize:J

    const-string v2, ".dm"

    invoke-virtual {p0, p3, v2}, Lcom/android/server/usage/StorageStatsService;->getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dmSize:J

    .line 1023
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->libSize:J

    new-instance p3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/lib/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/usage/StorageStatsService;->getDirBytes(Ljava/io/File;)J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->libSize:J

    return-void
.end method

.method public final enforceCratesPermission(ILjava/lang/String;)V
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_CRATES"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceStatsPermission(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 6

    .line 946
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 947
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 948
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 949
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 953
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 956
    throw p0

    :cond_0
    return-void
.end method

.method public final getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 845
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Installer;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0

    .line 847
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 849
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getAppIds(I)[I
    .locals 2

    .line 610
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 612
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 613
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .line 332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 335
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 336
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v2

    .line 337
    iget-wide v2, v2, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 2

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 346
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseLongArray;

    .line 348
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    .line 351
    :cond_0
    sget-wide p0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide p0
.end method

.method public final getDirBytes(Ljava/io/File;)J
    .locals 7

    .line 970
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 976
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 977
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 978
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    :goto_1
    add-long/2addr v1, v5

    goto :goto_2

    .line 981
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 982
    invoke-virtual {p0, v5}, Lcom/android/server/usage/StorageStatsService;->getDirBytes(Ljava/io/File;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v1

    .line 986
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to list directory "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J
    .locals 6

    .line 993
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 999
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 1000
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1001
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0

    .line 1005
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to list directory "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 300
    const-string p2, "android"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 315
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sub-long/2addr p1, v3

    .line 316
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    add-long/2addr v2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 323
    :goto_0
    const-string p0, "StorageStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFreeBytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catch_0
    move-exception p0

    .line 306
    :try_start_2
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    throw p0
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 267
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, p2, :cond_2

    .line 270
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide p1

    .line 271
    sget-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    return-wide p1

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getInternalStorageBlockDeviceSize()J

    move-result-wide p0

    .line 278
    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v1

    sub-long v3, v1, p0

    const-wide/16 v5, 0x3

    .line 281
    invoke-virtual {v0, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_1

    return-wide v1

    :cond_1
    return-wide p0

    .line 287
    :cond_2
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 292
    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide p0, p0, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide p0

    return-wide p0

    .line 289
    :cond_3
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find storage device for UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final invalidateMounts()V
    .locals 2

    .line 207
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 209
    const-string v0, "StorageStatsService"

    const-string v1, "Failed to invalidate mounts"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 255
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 p2, 0x0

    if-ne p1, p0, :cond_2

    .line 256
    const-string/jumbo p0, "vold.has_reserved"

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Landroid/os/Build;->IS_ARC:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method public final synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    return-void
.end method

.method public notifySignificantDelta()V
    .locals 3

    .line 791
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.android.externalstorage.documents/"

    .line 792
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 791
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public queryArtManagedStats(Ljava/lang/String;II)Landroid/app/usage/StorageStats;
    .locals 4

    .line 356
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x2000

    if-nez v0, :cond_1

    .line 364
    :try_start_0
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    iget p3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 370
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 372
    new-instance p1, Landroid/content/pm/PackageStats;

    invoke-direct {p1, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 367
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 376
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 377
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 383
    new-instance p3, Landroid/content/pm/PackageStats;

    invoke-direct {p3, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 384
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 386
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 391
    :cond_3
    aget-object v1, p1, v0

    invoke-virtual {p0, p3, v1}, Lcom/android/server/usage/StorageStatsService;->computeAppArtStats(Landroid/content/pm/PackageStats;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 394
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 397
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0
.end method

.method public queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 857
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 858
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 874
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 877
    :goto_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 878
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 868
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 885
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 886
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 887
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, p2, :cond_1

    goto :goto_0

    .line 895
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 898
    :goto_0
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 899
    new-array v1, p3, [Ljava/lang/String;

    .line 901
    array-length v2, p2

    :goto_1
    if-ge p3, v2, :cond_4

    aget-object v3, p2, p3

    .line 902
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 907
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v3, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 913
    :cond_3
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 916
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 920
    :cond_4
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 927
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 928
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 937
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Installer;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object p0

    .line 938
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 940
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .locals 3

    .line 576
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object p3

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 589
    const-string v1, "fw.verify_storage"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "External "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_1
    new-instance p0, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {p0}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 599
    aget-wide p1, v0, v2

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    const/4 p1, 0x1

    .line 600
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    const/4 p1, 0x2

    .line 601
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    const/4 p1, 0x3

    .line 602
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    const/4 p1, 0x4

    .line 603
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    const/4 p1, 0x5

    .line 604
    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    return-object p0

    :catch_0
    move-exception p0

    .line 595
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 11

    move-object v1, p4

    .line 403
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const-string v5, "StorageStatsService"

    if-eq p3, v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v3, p2, v6, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 420
    invoke-virtual {p0, v6, p4, v8}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_0
    move v10, v6

    goto :goto_1

    .line 423
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0, v6, p4}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    move v10, v9

    .line 428
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v9, :cond_3

    .line 430
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v3, p4}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    goto :goto_3

    .line 433
    :cond_3
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    move-object v1, v3

    .line 434
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    .line 435
    new-array v7, v9, [J

    .line 436
    new-array v8, v8, [Ljava/lang/String;

    .line 438
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 441
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 442
    const-class v9, Ljava/lang/String;

    .line 443
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v9, v8, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    .line 447
    :cond_5
    :goto_2
    new-instance v9, Landroid/content/pm/PackageStats;

    invoke-direct {v9, v5}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 449
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v1, :cond_6

    .line 455
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 456
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v9, p2, v1, v10}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    const-string/jumbo v1, "queryStatsForPackage"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 461
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 463
    :goto_3
    iput-object p2, v0, Landroid/app/usage/StorageStats;->packageName:Ljava/lang/String;

    .line 464
    iput p3, v0, Landroid/app/usage/StorageStats;->userHandle:I

    return-object v0

    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 413
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 12

    .line 471
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 472
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 474
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v9, "StorageStatsService"

    if-eq v3, v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-ne v0, p2, :cond_2

    .line 484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 483
    invoke-virtual {p0, v0, p3, v10}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    move p3, v1

    goto :goto_1

    .line 486
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    goto :goto_0

    .line 490
    :goto_1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 491
    array-length v0, v2

    new-array v6, v0, [J

    .line 492
    new-array v0, v10, [Ljava/lang/String;

    .line 494
    new-instance v8, Landroid/content/pm/PackageStats;

    invoke-direct {v8, v9}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    move v0, v10

    .line 495
    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_5

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v4, v2, v0

    const/16 v11, 0x2000

    invoke-virtual {v1, v4, v11, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 502
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 503
    const-class v4, Ljava/lang/String;

    .line 504
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v11

    .line 503
    invoke-static {v4, v7, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Ljava/lang/String;

    .line 507
    :cond_4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {p0, v8, v1, v4}, Lcom/android/server/usage/StorageStatsService;->computeAppStatsByDataTypes(Landroid/content/pm/PackageStats;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 512
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 517
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    move-object p1, v8

    .line 520
    const-string v0, "fw.verify_storage"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 521
    new-instance v8, Landroid/content/pm/PackageStats;

    invoke-direct {v8, v9}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, p1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :cond_6
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne v1, v0, :cond_7

    .line 531
    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageStats;IZ)V

    const-string/jumbo p3, "queryStatsForUid"

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 535
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p0

    .line 536
    iput v3, p0, Landroid/app/usage/StorageStats;->userHandle:I

    .line 537
    iput p2, p0, Landroid/app/usage/StorageStats;->uid:I

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 527
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 8

    .line 543
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 551
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v6

    .line 552
    new-instance v7, Landroid/content/pm/PackageStats;

    invoke-direct {v7, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v5

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    move-object p1, v7

    .line 556
    const-string p2, "fw.verify_storage"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 557
    new-instance v7, Landroid/content/pm/PackageStats;

    invoke-direct {v7, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7, p1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_1
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne v3, p2, :cond_2

    .line 565
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 566
    new-instance p3, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    const-string/jumbo p2, "queryStatsForUser"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 570
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 562
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .locals 4

    .line 650
    new-instance p0, Landroid/app/usage/StorageStats;

    invoke-direct {p0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 651
    iget v0, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iput v0, p0, Landroid/app/usage/StorageStats;->userHandle:I

    .line 652
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 653
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 654
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 655
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dexoptSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    .line 656
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->curProfSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    .line 657
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->refProfSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    .line 658
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->apkSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    .line 659
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->libSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    .line 660
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dmSize:J

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    .line 661
    iput-wide v2, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    return-object p0
.end method

.method public final updateConfig()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "storage_threshold_percent_high"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
