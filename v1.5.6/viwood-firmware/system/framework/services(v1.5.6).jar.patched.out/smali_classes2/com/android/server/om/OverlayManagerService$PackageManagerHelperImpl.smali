.class public final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/PackageManagerHelper;


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mInitializedUsers:Landroid/util/ArraySet;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$OwbHhRYnQy2yMeQN_5EmmuVHt4k(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->lambda$initializeForUser$0(ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 1206
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Landroid/util/ArraySet;

    .line 1209
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 1210
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1211
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public final addPackageUser(Lcom/android/server/pm/pkg/PackageState;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 3

    .line 1283
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    if-nez v1, :cond_0

    .line 1286
    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;-><init>(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/om/OverlayManagerService-IA;)V

    .line 1287
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1289
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fputmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;Lcom/android/server/pm/pkg/PackageState;)V

    .line 1291
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1293
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0

    .line 1291
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Android package for \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' could not be found; continuing as if package was never added"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "OverlayManager"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 1276
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/pkg/PackageState;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0
.end method

.method public doesTargetDefineOverlayable(Ljava/lang/String;I)Z
    .locals 0

    .line 1397
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 1398
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1405
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x20

    invoke-static {p0, p2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object p1

    .line 1407
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1411
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return p0

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1415
    :catchall_2
    :cond_1
    throw p0

    .line 1400
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to get target package"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 6

    .line 1446
    const-string v0, "AndroidPackage cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1448
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->isVerbose()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " package(s)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1453
    :cond_0
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 1454
    const-string p0, "    <empty>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    monitor-exit v0

    return-void

    .line 1458
    :cond_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1459
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1460
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 1461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " users="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    const-string v2, ", "

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1464
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1420
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1428
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1430
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfigSignaturePackage()Ljava/lang/String;
    .locals 2

    .line 1362
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    .line 1365
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object p0, p0, v1

    return-object p0
.end method

.method public getNamedActors()Ljava/util/Map;
    .locals 0

    .line 1343
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getNamedActors()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
    .locals 0

    .line 1373
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 1374
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1381
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p3, 0x20

    invoke-static {p0, p3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object p1

    .line 1383
    invoke-virtual {p1, p2}, Landroid/content/res/ApkAssets;->getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1387
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1391
    :catchall_2
    :cond_1
    throw p0

    .line 1376
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to get target package"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 4

    .line 1249
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 1251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1252
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1256
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    return-object v0

    .line 1264
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1260
    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check availability of package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catchall_0
    move-exception p0

    .line 1251
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 0

    .line 1437
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeForUser(I)Landroid/util/ArrayMap;
    .locals 7

    .line 1222
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 1231
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1232
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1233
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1234
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 1235
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1236
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1239
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .locals 0

    .line 1337
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$initializeForUser$0(ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 1

    .line 1224
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-interface {p2, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Lcom/android/server/pm/pkg/PackageState;I)Lcom/android/server/pm/pkg/PackageState;

    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 0

    .line 1322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1332
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0
.end method

.method public final removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V
    .locals 1

    .line 1312
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1313
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1314
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 1315
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->-$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final removePackageUser(Ljava/lang/String;I)V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    if-nez p1, :cond_0

    .line 1304
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1306
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V

    .line 1307
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1352
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
