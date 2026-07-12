.class public Lcom/android/server/gpu/GpuService;
.super Lcom/android/server/SystemService;
.source "GpuService.java"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

.field public final mDevDriverPackageName:Ljava/lang/String;

.field public mDeviceConfigListener:Lcom/android/server/gpu/GpuService$DeviceConfigListener;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public final mHasDevDriver:Z

.field public final mHasProdDriver:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProdDriverPackageName:Ljava/lang/String;

.field public mProdDriverVersionCode:J

.field public mSettingsObserver:Lcom/android/server/gpu/GpuService$SettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/gpu/GpuService;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/gpu/GpuService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigLock(Lcom/android/server/gpu/GpuService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProdDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfetchPrereleaseDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchPrereleaseDriverPackageProperties()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfetchProductionDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchProductionDriverPackageProperties()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mparseDenylists(Lcom/android/server/gpu/GpuService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessDenylists(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->processDenylists()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDenylist(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 90
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 91
    iput-wide v1, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    .line 92
    const-string/jumbo v1, "ro.gfx.driver.1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/gpu/GpuService;->mHasProdDriver:Z

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/gpu/GpuService;->mHasDevDriver:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 97
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo p1, "package"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/gpu/GpuService$PackageReceiver;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService-IA;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static assetToSettingsGlobal(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 207
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 215
    invoke-static {p4, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static native nSetUpdatableDriverPath(Ljava/lang/String;)V
.end method


# virtual methods
.method public final fetchPrereleaseDriverPackageProperties()V
    .locals 3

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/gpu/GpuService;->setUpdatableDriverPath(Landroid/content/pm/ApplicationInfo;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public final fetchProductionDriverPackageProperties()V
    .locals 4

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, ""

    const-string/jumbo v3, "updatable_driver_production_allowlist"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iput-wide v0, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 253
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    const-string v1, "allowlist.txt"

    const-string v2, ","

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/server/gpu/GpuService;->assetToSettingsGlobal(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    iget-boolean p1, p0, Lcom/android/server/gpu/GpuService;->mHasProdDriver:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/gpu/GpuService;->mHasDevDriver:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Lcom/android/server/gpu/GpuService$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/gpu/GpuService$SettingsObserver;-><init>(Lcom/android/server/gpu/GpuService;)V

    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mSettingsObserver:Lcom/android/server/gpu/GpuService$SettingsObserver;

    .line 119
    new-instance p1, Lcom/android/server/gpu/GpuService$DeviceConfigListener;

    invoke-direct {p1, p0}, Lcom/android/server/gpu/GpuService$DeviceConfigListener;-><init>(Lcom/android/server/gpu/GpuService;)V

    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigListener:Lcom/android/server/gpu/GpuService$DeviceConfigListener;

    .line 120
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchProductionDriverPackageProperties()V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->processDenylists()V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchPrereleaseDriverPackageProperties()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public final parseDenylists(Ljava/lang/String;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 277
    :try_start_0
    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    .line 279
    :try_start_1
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 289
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final processDenylists()V
    .locals 2

    .line 264
    const-string v0, "game_driver"

    const-string/jumbo v1, "updatable_driver_production_denylists"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 268
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    return-void
.end method

.method public final setDenylist()V
    .locals 7

    .line 293
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "updatable_driver_production_denylist"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    if-nez v1, :cond_0

    .line 297
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 301
    invoke-virtual {v2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 302
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "updatable_driver_production_denylist"

    const-string v3, ","

    .line 304
    invoke-virtual {v2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    monitor-exit v0

    return-void

    .line 308
    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setUpdatableDriverPath(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 336
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 337
    const-string p0, ""

    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->nSetUpdatableDriverPath(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!/lib/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->nSetUpdatableDriverPath(Ljava/lang/String;)V

    return-void
.end method
