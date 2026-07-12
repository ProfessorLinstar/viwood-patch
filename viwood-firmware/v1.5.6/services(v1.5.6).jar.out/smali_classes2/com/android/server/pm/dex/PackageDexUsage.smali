.class public Lcom/android/server/pm/dex/PackageDexUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDexUsage.java"


# static fields
.field static final MAX_SECONDARY_FILES_PER_OWNER:I = 0x64


# instance fields
.field public final mPackageUseInfoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    const-string v0, "PackageDexUsage_DiskWriter"

    const/4 v1, 0x0

    const-string/jumbo v2, "package-dex-usage.list"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearUsedByOtherApps(Ljava/lang/String;)Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 551
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 554
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clonePackageUseInfoMap()Ljava/util/Map;
    .locals 6

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 665
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 667
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage-IA;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 669
    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    new-instance v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage-IA;)V

    move-object p1, v1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 638
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSupportedVersion(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0

    .line 464
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public maybeWriteAsync()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    return-void
.end method

.method public read()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Ljava/io/Reader;)V
    .locals 16

    move-object/from16 v0, p0

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    new-instance v2, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 331
    const-string v4, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x24

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    invoke-virtual {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    const-string v0, "PackageDexUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected package-dex-use version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Not reading from it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 349
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    .line 350
    invoke-static {v9}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v6, v5

    move-object v8, v6

    .line 352
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 353
    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_9

    if-eqz v6, :cond_8

    .line 366
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 373
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 374
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_6

    .line 378
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v10

    .line 379
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v13

    .line 381
    const-string v14, "=UnsupportedClassLoaderContext="

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_4

    .line 387
    :cond_2
    aget-object v14, v12, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 388
    aget-object v11, v12, v11

    invoke-virtual {v0, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 389
    new-instance v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v15, v11, v14, v13, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v10, 0x2

    .line 392
    :goto_2
    array-length v11, v12

    if-ge v10, v11, :cond_4

    .line 393
    aget-object v11, v12, v10

    .line 394
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 395
    invoke-static {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoaderIsas(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v11

    aget-object v13, v12, v10

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 400
    :cond_3
    const-string v13, "PackageDexUsage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 403
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    const-string v5, "PackageDexUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 408
    :cond_5
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 375
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PackageDexUsage line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find dexUseInfo line"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_9
    const-string v5, "+"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 413
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v9

    .line 415
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 419
    :cond_a
    new-instance v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v8, v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v9

    goto :goto_4

    .line 424
    :cond_b
    iget-object v2, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v2

    .line 425
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 426
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 427
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 333
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No version line found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 678
    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 679
    :cond_0
    const-string p0, "1"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 680
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bool encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .locals 0

    .line 434
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 436
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find the classLoaderContext line."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public readInternal(Ljava/lang/Void;)V
    .locals 3

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 311
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 316
    :goto_0
    :try_start_2
    const-string p1, "PackageDexUsage"

    const-string v1, "Failed to parse package dex usage."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    :catch_3
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    throw p0

    :goto_3
    return-void
.end method

.method public final readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .locals 1

    .line 446
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 450
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object p1

    .line 448
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find the loadingPackages line."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .line 126
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p7, :cond_9

    .line 132
    const-string v0, "=UnsupportedClassLoaderContext="

    invoke-virtual {p7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    const-string p0, "PackageDexUsage"

    const-string p1, "Unsupported context?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 137
    :cond_0
    invoke-virtual {p1, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 139
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez v4, :cond_2

    .line 143
    new-instance p8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {p8, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 148
    invoke-static {p8, p2, p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$mmergePrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 152
    :cond_1
    new-instance p5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p5, v0, p3, p7, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p6, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 158
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v3

    return v2

    :cond_2
    if-eqz p5, :cond_3

    .line 165
    invoke-static {v4, p2, p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$mmergePrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v3

    return p0

    .line 167
    :cond_3
    new-instance p5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p5, v0, p3, p7, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p0, p1, p6, p4}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    .line 172
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    if-nez p1, :cond_5

    .line 175
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p3, 0x64

    if-ge p1, p3, :cond_4

    .line 176
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v3

    return v2

    .line 179
    :cond_4
    monitor-exit v3

    return p0

    .line 182
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p4

    if-ne p3, p4, :cond_8

    .line 197
    invoke-static {p1, p5, p8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$mmerge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    monitor-exit v3

    return v1

    .line 191
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to change ownerUserId for  dex path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 130
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null classLoaderContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loaderIsa "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUserPackage(Ljava/lang/String;I)Z
    .locals 6

    .line 575
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 578
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 581
    :cond_0
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    .line 582
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 583
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 584
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 585
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 586
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v2, v5

    goto :goto_0

    .line 592
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 593
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p2

    if-nez p2, :cond_3

    .line 594
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    .line 597
    :cond_3
    monitor-exit v0

    return v2

    .line 598
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 479
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 480
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 481
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 489
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    .line 492
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 496
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    .line 497
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 498
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 499
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 500
    invoke-static {v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 502
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 507
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 509
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    .line 510
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 511
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 514
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 516
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 519
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 521
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 522
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 523
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 524
    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 525
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 526
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 532
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    .line 533
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 540
    :cond_9
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 10

    .line 264
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 269
    const-string p1, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 270
    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 276
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "@"

    const-string v6, ","

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-array v4, p1, [Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmIsUsedByOtherApps(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v7

    .line 293
    invoke-virtual {p0, v7}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    .line 292
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoaderIsas(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    .line 299
    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    return-void
.end method

.method public final writeBoolean(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 674
    const-string p0, "1"

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public writeInternal(Ljava/lang/Void;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 230
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 234
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 239
    :cond_0
    const-string p1, "PackageDexUsage"

    const-string v0, "Failed to write usage for dex files"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public writeNow()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method
