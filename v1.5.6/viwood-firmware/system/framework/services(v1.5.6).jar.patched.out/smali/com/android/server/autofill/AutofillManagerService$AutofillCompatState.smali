.class public final Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mUserSpecs:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V
    .locals 2

    .line 1474
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1476
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1478
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 1480
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1481
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p0, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1483
    :cond_1
    new-instance p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    .line 1515
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1517
    const-string p0, "N/A"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1520
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1522
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1523
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1525
    const-string v5, "User: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1527
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 1528
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1529
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1530
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 1531
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1534
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1458
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    .line 1462
    monitor-exit v0

    return-object v1

    .line 1464
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    if-nez p0, :cond_2

    .line 1466
    monitor-exit v0

    return-object v1

    .line 1468
    :cond_2
    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->-$$Nest$fgeturlBarResourceIds(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1469
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCompatibilityModeRequested(Ljava/lang/String;JI)Z
    .locals 2

    .line 1438
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1440
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1442
    :cond_0
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    .line 1444
    monitor-exit v0

    return v1

    .line 1446
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    if-nez p0, :cond_2

    .line 1448
    monitor-exit v0

    return v1

    .line 1450
    :cond_2
    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->-$$Nest$fgetmaxVersionCode(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit v0

    return v1

    .line 1451
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCompatibilityModeRequests(I)V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1491
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1492
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 1493
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1496
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset(I)V
    .locals 3

    .line 1500
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    .line 1502
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1503
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1505
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_0

    const-string p1, "AutofillManagerService"

    const-string/jumbo v1, "reseting mUserSpecs"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1506
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_1

    .line 1508
    :cond_1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2

    const-string p0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserSpecs down to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
