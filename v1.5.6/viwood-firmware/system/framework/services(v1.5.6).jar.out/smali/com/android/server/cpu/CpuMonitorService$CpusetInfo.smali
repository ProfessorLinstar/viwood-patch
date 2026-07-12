.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"


# instance fields
.field public final cpuset:I

.field public mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

.field public final mSnapshotsByUptime:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 552
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V
    .locals 5

    .line 556
    iget v0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    invoke-static {v0, v1}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$smcontainsCpuset(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    if-nez v0, :cond_1

    .line 561
    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-direct {v0, p1, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;-><init>(J)V

    .line 562
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 563
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    .line 564
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    iget-wide v3, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    sub-long/2addr p1, v3

    invoke-static {}, Lcom/android/server/cpu/CpuMonitorService;->-$$Nest$sfgetCACHE_DURATION_MILLISECONDS()J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-lez p1, :cond_1

    .line 566
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 569
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->appendCpuInfo(Lcom/android/server/cpu/CpuInfoReader$CpuInfo;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 646
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public final getCumulativeAvgAvailabilityPercent(J)I
    .locals 11

    .line 622
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, v4

    move v5, v3

    move-wide v3, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 623
    iget-object v6, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 624
    iget-wide v7, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v9, v7, p1

    if-gtz v9, :cond_0

    move-wide v6, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 629
    iget-wide v9, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    add-long/2addr v1, v9

    .line 630
    iget-wide v9, v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    add-long/2addr v3, v9

    add-int/lit8 v0, v0, -0x1

    move-wide v6, v7

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long p0, v6, p1

    if-gtz p0, :cond_3

    const/4 p0, 0x2

    if-ge v5, p0, :cond_2

    goto :goto_2

    :cond_2
    long-to-double p0, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    long-to-double v0, v3

    div-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    :cond_3
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public getLatestCpuAvailabilityInfo()Lcom/android/server/cpu/CpuAvailabilityInfo;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-object p0
.end method

.method public getPrevCpuAvailabilityPercent()I
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 614
    :cond_0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result p0

    return p0
.end method

.method public populateLatestCpuAvailabilityInfo(JJ)V
    .locals 10

    .line 579
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    iput-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    .line 585
    iget-wide v4, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_2

    .line 589
    sget-boolean p1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 590
    sget-object p1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget p2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 591
    invoke-static {p2}, Lcom/android/server/cpu/CpuAvailabilityMonitoringConfig;->toCpusetString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 590
    const-string p3, "Skipping stale CPU availability information for cpuset %s"

    invoke-static {p1, p3, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    :cond_1
    iput-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    if-eqz v1, :cond_3

    iget-wide v1, v1, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    return-void

    :cond_3
    sub-long/2addr p1, p3

    .line 603
    new-instance v2, Lcom/android/server/cpu/CpuAvailabilityInfo;

    iget v3, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    .line 604
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result v6

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->getCumulativeAvgAvailabilityPercent(J)I

    move-result v7

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/cpu/CpuAvailabilityInfo;-><init>(IJIIJ)V

    iput-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpusetInfo{cpuset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    invoke-static {v1}, Lcom/android/server/cpu/CpuAvailabilityMonitoringConfig;->toCpusetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapshotsByUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestCpuAvailabilityInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
