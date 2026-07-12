.class public abstract Lcom/android/server/stats/pull/SystemMemoryUtil;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# direct methods
.method public static getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    .locals 20

    .line 29
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 30
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v1

    long-to-int v1, v1

    .line 31
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v2

    long-to-int v2, v2

    .line 32
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x1a

    .line 34
    new-array v4, v4, [J

    .line 35
    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    const/16 v5, 0xf

    .line 37
    aget-wide v5, v4, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    const/4 v5, 0x6

    .line 42
    aget-wide v5, v4, v5

    :cond_0
    const/4 v7, 0x1

    .line 45
    aget-wide v8, v4, v7

    const/16 v10, 0xa

    aget-wide v10, v4, v10

    add-long/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x10

    aget-wide v11, v4, v10

    add-long/2addr v8, v11

    const/16 v11, 0x11

    aget-wide v12, v4, v11

    add-long/2addr v8, v12

    const/16 v12, 0x12

    aget-wide v12, v4, v12

    add-long/2addr v8, v12

    const/4 v12, 0x7

    aget-wide v13, v4, v12

    add-long/2addr v8, v13

    add-long/2addr v8, v5

    const/16 v5, 0xc

    aget-wide v13, v4, v5

    add-long/2addr v8, v13

    const/16 v6, 0xd

    aget-wide v13, v4, v6

    add-long/2addr v8, v13

    .line 56
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v13

    const/16 v14, 0xe

    if-nez v13, :cond_1

    .line 58
    aget-wide v15, v4, v14

    add-long/2addr v8, v15

    :cond_1
    const/4 v13, 0x0

    if-ltz v3, :cond_2

    if-ltz v2, :cond_2

    add-int v15, v3, v2

    move/from16 v16, v5

    move/from16 v17, v6

    int-to-long v5, v15

    :goto_0
    add-long/2addr v8, v5

    goto :goto_1

    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    .line 71
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v8, v5

    if-ltz v3, :cond_3

    int-to-long v5, v3

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_4

    int-to-long v5, v0

    goto :goto_0

    .line 80
    :cond_4
    :goto_1
    new-instance v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    invoke-direct {v5}, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;-><init>()V

    move v6, v7

    move-wide/from16 v18, v8

    .line 81
    aget-wide v7, v4, v12

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    .line 82
    aget-wide v7, v4, v16

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    .line 83
    aget-wide v7, v4, v17

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    .line 84
    aget-wide v7, v4, v14

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    const/4 v7, 0x4

    .line 85
    aget-wide v7, v4, v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    .line 86
    aget-wide v7, v4, v13

    long-to-int v9, v7

    iput v9, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalKb:I

    .line 87
    aget-wide v12, v4, v6

    long-to-int v6, v12

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->freeKb:I

    const/16 v6, 0x13

    .line 88
    aget-wide v12, v4, v6

    long-to-int v6, v12

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->availableKb:I

    .line 89
    aget-wide v9, v4, v10

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeKb:I

    .line 90
    aget-wide v9, v4, v11

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveKb:I

    const/16 v6, 0x14

    .line 91
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeAnonKb:I

    const/16 v6, 0x15

    .line 92
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveAnonKb:I

    const/16 v6, 0x16

    .line 93
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeFileKb:I

    const/16 v6, 0x17

    .line 94
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveFileKb:I

    const/16 v6, 0x8

    .line 95
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapTotalKb:I

    const/16 v6, 0x9

    .line 96
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapFreeKb:I

    const/16 v6, 0x18

    .line 97
    aget-wide v9, v4, v6

    long-to-int v6, v9

    iput v6, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaTotalKb:I

    const/16 v6, 0x19

    .line 98
    aget-wide v9, v4, v6

    long-to-int v4, v9

    iput v4, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaFreeKb:I

    .line 99
    iput v0, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    .line 100
    iput v1, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    .line 101
    iput v2, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    .line 102
    iput v3, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    sub-long v7, v7, v18

    long-to-int v0, v7

    .line 103
    iput v0, v5, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    return-object v5
.end method
