.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mProvidersByClassPerUser:Landroid/util/SparseArray;

.field public final mProvidersByNamePerUser:Landroid/util/SparseArray;

.field public final mSingletonByClass:Ljava/util/HashMap;

.field public final mSingletonByName:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 67
    iput-object p1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    move p0, v0

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result p0

    :goto_1
    const/4 p1, 0x1

    if-nez v5, :cond_2

    if-eqz p0, :cond_2

    return p1

    :cond_2
    if-ne p5, v1, :cond_6

    .line 230
    :goto_2
    iget-object p2, v2, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 231
    iget-object p2, v2, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 232
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/util/HashMap;

    .line 231
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez v5, :cond_3

    return p1

    :cond_3
    move p0, p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return p0

    .line 241
    :cond_6
    invoke-virtual {v2, p5}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 243
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result p1

    or-int/2addr p0, p1

    :cond_7
    return p0
.end method

.method public final collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 2

    .line 201
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p5, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p1, :cond_1

    .line 202
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 205
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 207
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 p5, 0x1

    if-nez p3, :cond_3

    return p5

    .line 212
    :cond_3
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return p5
.end method

.method public final dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .locals 6

    .line 382
    iget-object v0, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    array-length v1, p5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p5, v2

    if-nez p6, :cond_1

    .line 384
    const-string v4, "--proto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    move-object p6, p5

    move-object p5, v0

    .line 386
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    return-void

    :cond_1
    move v5, p6

    move-object p6, p5

    move p5, v5

    add-int/lit8 v2, v2, 0x1

    move-object v5, p6

    move p6, p5

    move-object p5, v5

    goto :goto_1

    :cond_2
    move v5, p6

    move-object p6, p5

    move p5, v5

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 393
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "PROVIDER "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 395
    const-string p1, " pid="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_3

    .line 397
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 399
    :cond_3
    const-string p1, "(not running)"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-eqz p5, :cond_4

    const/4 p1, 0x1

    .line 402
    invoke-virtual {p4, p3, v1, p1}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 404
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_5

    .line 406
    const-string p1, "    Client:"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 408
    const-string p1, "      "

    move-object p5, v0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    :cond_5
    return-void

    .line 404
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 9

    const/4 p5, 0x1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 356
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 358
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gtz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p5}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return v1

    :cond_0
    move v0, v1

    .line 363
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 365
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 368
    :cond_1
    :goto_1
    :try_start_3
    const-string v3, ""

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move v8, p6

    :try_start_4
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v1, v1, 0x1

    move v0, p5

    move-object p0, v2

    move-object p1, v4

    move-object p2, v5

    move-object p4, v7

    move p6, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, p0

    .line 372
    iget-object p0, v2, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p5}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return p5

    :goto_3
    iget-object p0, v2, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p5}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 373
    throw p1
.end method

.method public dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .line 419
    array-length v0, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    .line 420
    array-length p4, p4

    const-string v0, "--proto"

    aput-object v0, v8, p4

    .line 422
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 424
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    if-gtz p4, :cond_0

    return v0

    :cond_0
    move p4, v0

    .line 429
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_2

    .line 430
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    .line 432
    iget-object v2, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 433
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    return v1

    :cond_1
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    add-int/lit8 p4, p4, 0x1

    move-object p0, v2

    move-object p1, v4

    move-object p2, v5

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .locals 3

    .line 252
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p6, 0x0

    move v0, p6

    .line 254
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p3, :cond_0

    .line 257
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 261
    const-string p5, ""

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p5, p6

    :cond_1
    if-eqz p4, :cond_2

    .line 265
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 269
    :cond_2
    const-string v0, "  * "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 271
    const-string v0, "    "

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .locals 4

    .line 278
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p5, 0x0

    move v0, p5

    .line 280
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p2, :cond_0

    .line 283
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 287
    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, p5

    :cond_1
    if-eqz p3, :cond_2

    .line 291
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 295
    :cond_2
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 9

    .line 306
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v5, 0x0

    if-lez v1, :cond_0

    .line 307
    const-string v4, "  Published single-user content providers (by class):"

    iget-object v6, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v5

    :cond_0
    const/4 v7, 0x0

    move v4, v5

    move v8, v7

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/HashMap;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Published user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 315
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " content providers (by class):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v4, v1

    move-object v1, p1

    .line 314
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v4

    or-int/2addr v4, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    if-eqz p2, :cond_3

    .line 320
    const-string v3, "  Single-user authority to provider mappings:"

    move v4, v5

    iget-object v5, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v3

    or-int v1, v4, v3

    move v4, v1

    .line 323
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 325
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " authority to provider mappings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 327
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 324
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v3

    or-int/2addr v4, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return v4

    :cond_3
    move v4, v5

    return v4
.end method

.method public final dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V
    .locals 1

    .line 447
    :try_start_0
    new-instance p0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object p4, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {p4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 449
    invoke-interface {p5, v0, p4, p6}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    const-wide/16 p4, 0x7d0

    .line 454
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 457
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 461
    :catch_1
    const-string p0, "      Got a RemoteException while dumping the service"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "      Failure while dumping the provider: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProvidersByClass(I)Ljava/util/HashMap;
    .locals 2

    if-ltz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvidersByName(I)Ljava/util/HashMap;
    .locals 2

    if-ltz p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-static {p1}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 339
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 340
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 341
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 345
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 346
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 348
    new-instance p0, Lcom/android/server/am/ProviderMap$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/am/ProviderMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1

    .line 346
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1

    .line 124
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 127
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1

    .line 111
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeProviderByClass(Landroid/content/ComponentName;I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-ltz p2, :cond_2

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 165
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void

    .line 157
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeProviderByName(Ljava/lang/String;I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-ltz p2, :cond_2

    .line 142
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void

    .line 138
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
