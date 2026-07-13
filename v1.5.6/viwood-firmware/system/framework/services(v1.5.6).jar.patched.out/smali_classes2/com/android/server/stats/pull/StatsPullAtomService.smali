.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# static fields
.field public static final ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

.field public static final ENABLE_PRESSURE_STALL_INFORMATION_PULLER:Z

.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field public static final RANDOM_SEED:I


# instance fields
.field public mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

.field public final mAppOpsLock:Ljava/lang/Object;

.field public mAppOpsSamplingRate:I

.field public final mAppSizeLock:Ljava/lang/Object;

.field public final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field public final mAttributedAppOpsLock:Ljava/lang/Object;

.field public mBaseDir:Ljava/io/File;

.field public final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field public final mBinderCallsStatsLock:Ljava/lang/Object;

.field public final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field public final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field public final mBuildInformationLock:Ljava/lang/Object;

.field public final mCategorySizeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCooldownDeviceLock:Ljava/lang/Object;

.field public final mCpuActiveTimeLock:Ljava/lang/Object;

.field public final mCpuClusterTimeLock:Ljava/lang/Object;

.field public final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidLock:Ljava/lang/Object;

.field public mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field public mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field public mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field public mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field public final mDangerousAppOpsList:Landroid/util/ArraySet;

.field public final mDangerousAppOpsListLock:Ljava/lang/Object;

.field public final mDangerousPermissionStateLock:Ljava/lang/Object;

.field public final mDataBytesTransferLock:Ljava/lang/Object;

.field public final mDebugElapsedClockLock:Ljava/lang/Object;

.field public mDebugElapsedClockPreviousValue:J

.field public mDebugElapsedClockPullCount:J

.field public final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field public mDebugFailingElapsedClockPreviousValue:J

.field public mDebugFailingElapsedClockPullCount:J

.field public final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field public final mDirectoryUsageLock:Ljava/lang/Object;

.field public final mDiskIoLock:Ljava/lang/Object;

.field public final mDiskStatsLock:Ljava/lang/Object;

.field public final mExternalStorageInfoLock:Ljava/lang/Object;

.field public final mFaceSettingsLock:Ljava/lang/Object;

.field public final mHealthHalLock:Ljava/lang/Object;

.field public mHealthService:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHistoricalSubs:Ljava/util/ArrayList;

.field public mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

.field public final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field public final mIonHeapSizeLock:Ljava/lang/Object;

.field public mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field public final mKernelWakelockLock:Ljava/lang/Object;

.field public mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

.field public final mKeystoreLock:Ljava/lang/Object;

.field public mLastNetworkStatsPollTime:J

.field public final mLooperStatsLock:Ljava/lang/Object;

.field public final mModemActivityInfoLock:Ljava/lang/Object;

.field public final mNetworkStatsAccumulators:Ljava/util/ArrayList;

.field public final mNetworkStatsBaselines:Ljava/util/ArrayList;

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mNotificationManagerService:Landroid/app/INotificationManager;

.field public final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field public final mNotificationStatsLock:Ljava/lang/Object;

.field public final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field public final mPowerProfileLock:Ljava/lang/Object;

.field public final mProcStatsLock:Ljava/lang/Object;

.field public final mProcessCpuTimeLock:Ljava/lang/Object;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field public final mProcessMemoryStateLock:Ljava/lang/Object;

.field public mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field public final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mRoleHolderLock:Ljava/lang/Object;

.field public final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field public final mSettingsStatsLock:Ljava/lang/Object;

.field public mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageService:Landroid/os/IStoraged;

.field public final mStoragedLock:Ljava/lang/Object;

.field public mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field public final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field public final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mSystemUptimeLock:Ljava/lang/Object;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mTemperatureLock:Ljava/lang/Object;

.field public final mThermalLock:Ljava/lang/Object;

.field public mThermalService:Landroid/os/IThermalService;

.field public final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field public final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field public mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

.field public final mUwbActivityInfoLock:Ljava/lang/Object;

.field public mUwbManager:Landroid/uwb/UwbManager;

.field public final mWifiActivityInfoLock:Ljava/lang/Object;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$0cKdZJLATNbDt9m0JVtJvNMBxH0(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2

    .line 2320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2321
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2322
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2O0SkzcYXm_AQJGiJNMylXy_Wlg(Ljava/util/List;II[J)V
    .locals 7

    const/4 v0, 0x0

    .line 2034
    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move v1, p1

    move v2, p2

    .line 2036
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    .line 2035
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$3h98UZb7dm2Em_hF8s2O2X4P0wc(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 18

    .line 1726
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1727
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1730
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1731
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$7QNTU9FRjoKcuYBW3nwxJ_1h3JI(Ljava/util/List;II[J)V
    .locals 3

    const/4 v0, 0x0

    .line 2288
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 2289
    aget-wide v1, p3, v0

    .line 2290
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2289
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$8VLDv9gQV9cbYLHktnmAvgf2y4s(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getUidNetworkStatsSnapshotForTemplateLocked$9(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9sDwaXHr6DKJcT98-BrD4PQ9HfI(Landroid/util/SparseArray;I[J)V
    .locals 5

    .line 2146
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2150
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0xea5f

    goto :goto_0

    .line 2155
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2158
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_2

    .line 2160
    array-length v0, p2

    new-array v0, v0, [J

    .line 2161
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    .line 2163
    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_3

    .line 2164
    aget-wide v1, v0, p0

    aget-wide v3, p2, p0

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic $r8$lambda$DwULdVYm9Qf7XhyM_4BQrbqbpE4(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RgpNyMARA8GUjHyunSK8FDiRfT8(Landroid/util/SparseArray;I[I[J[DI[J)V
    .locals 7

    .line 2084
    invoke-static {p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2088
    :cond_0
    invoke-static {p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p5, 0xea5f

    goto :goto_0

    .line 2093
    :cond_1
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p5

    .line 2096
    :goto_0
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_2

    mul-int/lit8 p1, p1, 0x3

    .line 2098
    new-array v0, p1, [D

    .line 2099
    invoke-virtual {p0, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    .line 2102
    :goto_1
    array-length p1, p6

    if-ge p0, p1, :cond_3

    .line 2103
    aget p1, p2, p0

    .line 2104
    aget-wide v1, p6, p0

    mul-int/lit8 p1, p1, 0x3

    .line 2105
    aget-wide v3, v0, p1

    aget-wide v5, p3, p0

    mul-long/2addr v5, v1

    long-to-double v5, v5

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p5, p1, 0x1

    .line 2106
    aget-wide v3, v0, p5

    long-to-double v1, v1

    add-double/2addr v3, v1

    aput-wide v3, v0, p5

    add-int/lit8 p1, p1, 0x2

    .line 2107
    aget-wide v3, v0, p1

    aget-wide v5, p4, p0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic $r8$lambda$XpfctOQ0eLPtXTb5L-V7Ki49Za4(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$readProcStatsHighWaterMark$23(ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_sqKYA5jJ5098GuPVU-_KS1n6_w(Ljava/util/concurrent/atomic/AtomicInteger;[I)V
    .locals 0

    .line 5135
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static synthetic $r8$lambda$ekv4UoGqsHEPM5t9Ano0NUSQAQI(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 0

    .line 1372
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f8CMvmwmNLc8uUbjdjU3zNO3uPg(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIThermalService$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fBtiMXk9aIaWnrTzdfhmfOwjEJ4(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIKeystoreMetricsService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fS9CWa4A6V7bN4ZnSc7_Ru_wM0M(Landroid/os/SynchronousResultReceiver;Landroid/uwb/UwbActivityEnergyInfo;)V
    .locals 2

    .line 2445
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2446
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2447
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUFk8IGjCPUN5Z1_tSVHSh_nW2M(Landroid/net/NetworkTemplate;ZLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;)Z
    .locals 0

    .line 1592
    invoke-virtual {p2, p0, p1}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->hasEqualParameters(Landroid/net/NetworkTemplate;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gdGSFuqXcHC_1akP48Yk4TAgQy0(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    .line 2561
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gszRlraDMPykoqwbE9AU9qwdVfw(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIProcessStatsService$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$iUkxJZDuMC3iIfhqLcbPHDiceXU(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 18

    .line 1700
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1704
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1705
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$jeEx2IUSYb9lX3Rx0kgkE63ggWo(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getINotificationManagerService$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$lhR8vHUhEf2w0nIQBkw-NB6HwRA(Ljava/util/List;IILjava/lang/Long;)V
    .locals 2

    .line 2266
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$nNR4Gctk6hlu9qnTsuOvrymZzfk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qb74jErDmbpYjoDRKkDDIHHyoHk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$sreRGAc35eKWERfOvm5LZBlAzsY(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 18

    .line 1713
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$utUETIDrW9SBoswWi9QjqulXwTk(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$w7Kd7lQjlCiLcNLOI7IGnUO7EkY([I)Z
    .locals 1

    .line 5134
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda30;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xOFqwPE7nMI3fCLOQoBFq0pcvKM(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIStoragedService$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$y1LLMMDwbj7_Q6rslFz7YV7vHwU(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 18

    .line 1739
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1740
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    .line 1741
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    .line 1743
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1744
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$yiSVwuJ3h2vuh0LsbdQ790jSlzQ(Ljava/util/List;IIJJJJJJJJJJ)V
    .locals 0

    .line 3394
    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zNvpss6UMLNdcD_4Qi4QLslHmiA(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    .line 2616
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCachedAppsHighWatermark(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHdrCapabilities(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPendingIntentsPerPackage(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessAssociationLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessStateLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANDOM_SEED()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 293
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 312
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const/4 v0, 0x1

    .line 468
    sput-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    .line 472
    sput-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_PRESSURE_STALL_INFORMATION_PULLER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 367
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 369
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 372
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 374
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x0

    .line 426
    iput v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 428
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 429
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    const-wide/16 v1, -0x3a98

    .line 446
    iput-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 461
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 477
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 481
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 482
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 483
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 484
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 485
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 486
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    .line 487
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 488
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 491
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 493
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 495
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 499
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 500
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 501
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 502
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 505
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 506
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 509
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 511
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 512
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 513
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 514
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 516
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 519
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 520
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 521
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 524
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 525
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 526
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 531
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    .line 1904
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1905
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 1907
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1909
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    .line 1915
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StatsPullAtomService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static canQueryNetworkStatsForTypeProxy()Z
    .locals 2

    .line 1566
    :try_start_0
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 1569
    :catch_0
    const-string v0, "StatsPullAtomService"

    const-string v1, "Querying network stats for TYPE_PROXY is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3879
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3880
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const-wide v3, 0x10e00000001L

    .line 3884
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3887
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIdOrdinals()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    const-wide v7, 0x20500000002L

    .line 3888
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3892
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIds()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3894
    array-length v2, p0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p0, v4

    const-wide v5, 0x20900000003L

    .line 3895
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3901
    :cond_3
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3902
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3903
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToMetricsDetectionMode(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static getAllCollapsedRatTypes()[I
    .locals 6

    .line 1681
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 1682
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1683
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    .line 1684
    invoke-static {v5}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1690
    invoke-static {v0}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1689
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-static {v1}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private native initializeNativePullers()V
.end method

.method private synthetic lambda$onBootPhase$0()V
    .locals 0

    .line 874
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 875
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 876
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 877
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[I)[B
    .locals 8

    .line 4339
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    .line 4340
    :goto_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 4342
    :cond_1
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 4344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_2

    .line 4348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** FINISHED READING: pos="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " len="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    aput v2, p1, v1

    return-object v0

    :cond_2
    add-int/2addr v2, v3

    .line 4354
    array-length v3, v0

    if-lt v2, v3, :cond_1

    add-int/lit16 v3, v2, 0x4000

    .line 4355
    new-array v4, v3, [B

    .line 4357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes to new array len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_1
.end method

.method public static removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 6

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 1410
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 1411
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 1412
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1415
    :cond_2
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1416
    new-instance p0, Landroid/net/NetworkStats;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0

    .line 1418
    :cond_3
    new-instance p0, Landroid/net/NetworkStats;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1420
    invoke-virtual {p0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .locals 2

    .line 4331
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p2, 0x1

    .line 4332
    new-array p2, p2, [I

    .line 4333
    invoke-static {v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v0

    .line 4334
    aget p2, p2, v1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p1

    .line 1452
    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1454
    :goto_0
    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStats$Entry;

    .line 1456
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v7

    .line 1457
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v9

    .line 1458
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v10

    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v12

    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v14

    .line 1459
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v16

    if-eqz v1, :cond_2

    const/16 v5, 0xd

    :goto_3
    move/from16 v18, v5

    goto :goto_4

    .line 1460
    :cond_2
    iget v5, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    goto :goto_3

    :goto_4
    const/16 v6, 0x2763

    .line 1455
    invoke-static/range {v6 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJI)Landroid/util/StatsEvent;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 22

    move-object/from16 v0, p1

    .line 1471
    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    const/16 v5, 0x14

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v3

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v21, v4

    .line 1475
    :goto_2
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1478
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1479
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    if-eqz v2, :cond_3

    const/16 v3, 0xd

    :goto_4
    move/from16 v16, v3

    goto :goto_5

    .line 1480
    :cond_3
    iget v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    goto :goto_4

    :goto_5
    iget-object v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v4, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 1484
    iget-boolean v3, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    :goto_6
    move/from16 v20, v3

    move/from16 v19, v6

    goto :goto_7

    :cond_4
    const/4 v3, 0x3

    goto :goto_6

    :goto_7
    const/16 v6, 0x2762

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 1476
    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 14

    move-object/from16 p0, p3

    .line 1428
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 1430
    iget-boolean v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v2, :cond_1

    .line 1433
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v4

    .line 1434
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v5, v2

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    .line 1435
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v12

    move v3, p1

    .line 1432
    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    :goto_3
    move-object/from16 v2, p2

    goto :goto_4

    .line 1439
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    .line 1440
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v10

    move v2, p1

    .line 1438
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    goto :goto_3

    .line 1442
    :goto_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p1

    .line 1493
    iget v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 1494
    iget-object v14, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_0
    if-ge v1, v15, :cond_2

    aget v5, v14, v1

    .line 1495
    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    move-object v3, v2

    .line 1497
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1498
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    move/from16 v6, v16

    :goto_2
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    move-object v10, v3

    move v3, v6

    move-wide v6, v7

    .line 1499
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    move-object v12, v10

    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v12

    move/from16 v18, v1

    const/16 v1, 0x2774

    .line 1496
    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v18

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    move/from16 v18, v1

    add-int/lit8 v1, v18, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;
    .locals 14

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2762

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2763

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2774

    if-eq p1, v1, :cond_1

    const/16 v1, 0x27d8

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1356
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown atomTag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1316
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(I)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1317
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v2}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1309
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(I)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1310
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v2}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1301
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(I)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1303
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v3}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1294
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(I)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1296
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v3}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1322
    :cond_0
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x9

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1323
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1322
    invoke-virtual {p0, p1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1324
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    const/4 p0, 0x2

    filled-new-array {p0}, [I

    move-result-object v3

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1352
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManagedLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 1332
    :cond_2
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1333
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1332
    invoke-virtual {p0, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1334
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1336
    invoke-virtual {v1, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1334
    invoke-virtual {p0, v1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1337
    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1338
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    filled-new-array {v3, v2}, [I

    move-result-object v6

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1346
    :cond_3
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1347
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final convertToAccessibilityShortcutType(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    :cond_2
    return p0
.end method

.method public final countAccessibilityServices(Ljava/lang/String;)I
    .locals 3

    .line 5330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 5333
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    .line 5334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;
    .locals 12

    .line 5292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5294
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    .line 5295
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 5298
    :cond_0
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5299
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    .line 5300
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    .line 5301
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    .line 5300
    invoke-virtual {p0, p1, v10, v11, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->findModeId([Landroid/view/Display$Mode;IIF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 5302
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 5303
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final estimateAppOpsSamplingRate()V
    .locals 14

    .line 4217
    const-string/jumbo v0, "permissions"

    const-string v1, "app_ops_target_collection_size"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 4220
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 4222
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4223
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 4225
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v4, 0x9

    .line 4226
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v3

    .line 4227
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v3

    .line 4228
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;

    invoke-direct {v5, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v3, 0x7d0

    .line 4229
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v2, 0x275b

    const/16 v3, 0x64

    .line 4232
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v1

    .line 4235
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4237
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 4238
    iget-object v8, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    iget-object v5, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 4239
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    add-int/2addr v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr v0, v3

    int-to-long v0, v0

    .line 4242
    div-long v8, v0, v6

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x64

    invoke-static/range {v8 .. v13}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4244
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4245
    :try_start_0
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 4246
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 4

    .line 1921
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1923
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1925
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 1947
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object p0

    .line 1949
    :cond_0
    const-string p0, "StatsPullAtomService"

    const-string v0, "Failed to get bluetooth adapter!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final findModeId([Landroid/view/Display$Mode;IIF)I
    .locals 3

    .line 5312
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 5313
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5314
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getDataUsageBytesTransferSnapshotForOemManagedLocked()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    .line 1507
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    .line 1508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x1

    .line 1509
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x4

    .line 1510
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1507
    invoke-static {v1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    .line 1512
    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    .line 1515
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1518
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    move v8, v6

    :goto_0
    if-ge v8, v3, :cond_0

    .line 1519
    aget v9, v2, v8

    .line 1523
    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1524
    invoke-virtual {v10, v9}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 1525
    invoke-virtual {v0, v10, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1527
    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    move/from16 v17, v9

    .line 1528
    new-instance v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1529
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    filled-new-array {v11}, [I

    move-result-object v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 1528
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public final getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    .line 1658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget v12, v2, v5

    .line 1660
    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    move-object/from16 v13, p1

    iget-object v8, v13, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1662
    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1663
    invoke-virtual {v6, v12}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1664
    invoke-virtual {v6, v7}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 1666
    invoke-virtual {v0, v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1667
    new-instance v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v6

    filled-new-array {v4}, [I

    move-result-object v8

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_0

    .line 1190
    const-string v1, "android.security.metrics"

    .line 1191
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1190
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1194
    :try_start_1
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1200
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1201
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1205
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object p0

    .line 1206
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getINotificationManagerService()Landroid/app/INotificationManager;
    .locals 4

    .line 1232
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_0

    .line 1234
    const-string/jumbo v1, "notification"

    .line 1235
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1234
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1237
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1239
    :try_start_1
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1245
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1246
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1249
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1250
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object p0

    .line 1249
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .locals 4

    .line 1254
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_0

    .line 1256
    const-string/jumbo v1, "procstats"

    .line 1257
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1256
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1259
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1261
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1267
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1268
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1271
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1272
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object p0

    .line 1271
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIStoragedService()Landroid/os/IStoraged;
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_0

    .line 1212
    const-string/jumbo v1, "storaged"

    .line 1213
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1212
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1215
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1217
    :try_start_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1223
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1224
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1227
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object p0

    .line 1227
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIThermalService()Landroid/os/IThermalService;
    .locals 4

    .line 1166
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_0

    .line 1168
    const-string/jumbo v1, "thermalservice"

    .line 1169
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1168
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1172
    :try_start_1
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1178
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1179
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1183
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object p0

    .line 1184
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;
    .locals 1

    .line 1086
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-eqz p0, :cond_0

    return-object p0

    .line 1087
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NetworkStatsManager is not ready"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;
    .locals 13

    .line 3248
    const-string v0, "_"

    const-string v1, "/"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    return-object v9

    .line 3252
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3255
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v3

    .line 3256
    new-instance v8, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v8, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x1f

    .line 3259
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v5

    .line 3265
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 3266
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3272
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 3273
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3275
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 3281
    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string v0, "Getting procstats failed: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3284
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3285
    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .locals 16

    move-object/from16 v0, p0

    .line 1584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1585
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 1587
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "netstats_uid_bucket_duration"

    sget-wide v7, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1591
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct {v6, v10, v11}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Landroid/net/NetworkTemplate;Z)V

    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    if-nez v5, :cond_0

    .line 1594
    new-instance v9, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    sub-long v14, v1, v12

    invoke-direct/range {v9 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;-><init>(Landroid/net/NetworkTemplate;ZJJ)V

    .line 1599
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    .line 1602
    :cond_0
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v5, v3, v4, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->queryStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public final getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .locals 7

    .line 1623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1626
    iget-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1627
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    .line 1642
    invoke-static {p1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p3

    .line 1643
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    if-nez p2, :cond_1

    return-object p3

    .line 1647
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    .line 1649
    invoke-static {p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1650
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    .line 1651
    invoke-virtual {p3, p1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final getUidNetworkStatsSnapshotForTransportLocked(I)Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    .line 1554
    const-string p1, "StatsPullAtomService"

    const-string v0, "Unexpected transport."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    .line 1551
    :cond_0
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    goto :goto_0

    .line 1547
    :cond_1
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1548
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final hasDolbyVisionIssue(Landroid/view/Display;)Z
    .locals 2

    .line 5131
    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 5132
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>()V

    .line 5133
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>()V

    .line 5134
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 5135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 5137
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5138
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    array-length p1, p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final highWaterMarkFilePrefix(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x272d

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1f

    .line 3343
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x2732

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    .line 3346
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3348
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atom-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initAndRegisterDeferredPullers()V
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/uwb/UwbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerUwbActivityInfo()V

    return-void
.end method

.method public final initAndRegisterNetworkStatsPullers()V
    .locals 4

    .line 1098
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->canQueryNetworkStatsForTypeProxy()Z

    move-result v0

    .line 1104
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2710

    .line 1106
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1105
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1108
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2711

    .line 1109
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1111
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2712

    .line 1112
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1114
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2713

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1116
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2763

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1118
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2762

    .line 1119
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1118
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1121
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2774

    .line 1122
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1121
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x27d8

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1128
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1133
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 1132
    invoke-virtual {v1, v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 1139
    sget-boolean v1, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initMobileDataStatsPuller()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferByProcState()V

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProxyBytesTransferBackground()V

    :cond_2
    return-void

    .line 1128
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final initMobileDataStatsPuller()V
    .locals 3

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StatsPullAtomService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 1074
    new-instance v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 1076
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    invoke-direct {v0, v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;-><init>(Landroid/app/usage/NetworkStatsManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    :cond_0
    return-void
.end method

.method public final initNetworkStatsManager()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public initializePullersState()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 895
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 896
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 897
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 899
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 900
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 903
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 906
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 910
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 911
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 912
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 913
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 916
    new-instance v0, Lcom/android/server/power/stats/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/server/power/stats/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    .line 917
    new-instance v0, Lcom/android/server/power/stats/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/server/power/stats/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 920
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 921
    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/4 v0, 0x0

    .line 925
    :try_start_0
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    :catch_0
    const-string v0, "StatsPullAtomService"

    const-string v2, "failed to initialize healthHalWrapper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move v2, v1

    :goto_1
    const/16 v3, 0xa3

    if-ge v2, v3, :cond_2

    .line 933
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 940
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 941
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 949
    :cond_2
    new-instance v0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v1, "/system/bin/surfaceflinger"

    invoke-direct {v0, v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 952
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    return-void
.end method

.method public final isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z
    .locals 2

    .line 5360
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5361
    const-string p1, "accessibility_button_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 5363
    const-string v1, "accessibility_button_targets"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 5367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    return v0
.end method

.method public final isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .locals 5

    .line 5338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5340
    const-string p1, "accessibility_button_targets"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5342
    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5344
    const-string v1, "accessibility_qs_targets"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5346
    const-string v2, "accessibility_shortcut_dialog_shown"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5348
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz v2, :cond_1

    .line 5350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 5351
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 5352
    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v4, :cond_2

    move p0, v4

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    if-nez p0, :cond_4

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v4
.end method

.method public final isHealthAppOp(I)Z
    .locals 0

    .line 5384
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5385
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getIKeystoreMetricsService$3()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1196
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getINotificationManagerService$5()V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1241
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1242
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getIProcessStatsService$6()V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1263
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getIStoragedService$4()V
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1219
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getIThermalService$2()V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1174
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getUidNetworkStatsSnapshotForTemplateLocked$9(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .locals 2

    .line 1604
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1605
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1607
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onBootPhase$1()V
    .locals 0

    .line 883
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    .line 885
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterDeferredPullers()V

    return-void
.end method

.method public final synthetic lambda$readProcStatsHighWaterMark$23(ILjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 3358
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3359
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final milliAmpHrsToNanoAmpSecs(D)J
    .locals 2

    .line 0
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public onBootPhase(I)V
    .locals 1

    .line 871
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 873
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 880
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initNetworkStatsManager()V

    .line 881
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 863
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_0

    .line 864
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    const-class p0, Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 5

    .line 4797
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4798
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4802
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v3

    .line 4803
    iget v3, v3, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2789

    invoke-static {v4, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 5

    .line 4858
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4859
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4862
    :cond_0
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v2

    const/16 v3, 0x278d

    .line 4863
    iget v2, v2, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 7

    .line 4765
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4766
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4769
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v3

    .line 4770
    iget v4, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v5, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v3, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v6, 0x2787

    invoke-static {v6, v4, v5, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 12

    .line 4750
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4751
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    return v4

    .line 4755
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v3

    .line 4756
    iget v5, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v10, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v11, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2786

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11

    .line 4780
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4781
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4785
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4786
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v3

    .line 4787
    iget v5, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2788

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10

    .line 4829
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4830
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4834
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v3

    .line 4835
    iget v5, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v7, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v8, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x278b

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10

    .line 4812
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4813
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4817
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4818
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v3

    .line 4819
    iget v5, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x278a

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6

    .line 4737
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4738
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4741
    :cond_0
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v2

    .line 4742
    iget v3, v2, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v4, v2, Landroid/security/metrics/StorageStats;->size:I

    iget v2, v2, Landroid/security/metrics/StorageStats;->unused_size:I

    const/16 v5, 0x2777

    invoke-static {v5, v3, v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6

    .line 4844
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4845
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4848
    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v3

    .line 4849
    iget v4, v3, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    iget v3, v3, Landroid/security/metrics/RkpErrorStats;->security_level:I

    const/16 v5, 0x278c

    invoke-static {v5, v4, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p6, :cond_0

    .line 4284
    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4285
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 4286
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4290
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    if-nez p6, :cond_2

    const/4 p6, 0x0

    :goto_1
    move-object v2, p0

    move-object v5, p1

    move v6, p3

    move-object v3, p5

    move-object v4, p6

    goto :goto_2

    .line 4291
    :cond_2
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    :goto_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 4293
    iget p0, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge p0, p4, :cond_3

    .line 4294
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .locals 17

    move/from16 v0, p2

    .line 4251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    .line 4252
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    if-ge v9, v1, :cond_4

    move-object/from16 v10, p1

    .line 4253
    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v11

    .line 4254
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v4

    move v12, v8

    .line 4255
    :goto_1
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 4256
    invoke-virtual {v11, v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v13

    const/16 v1, 0x275b

    if-ne v0, v1, :cond_1

    move v14, v8

    .line 4259
    :goto_2
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 4261
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v15

    move v1, v8

    .line 4262
    :goto_3
    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4263
    invoke-virtual {v15, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 4265
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v7

    move/from16 v5, p3

    move/from16 v16, v1

    move-object/from16 v1, p0

    .line 4264
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v16, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0x274c

    if-ne v0, v1, :cond_2

    move v14, v8

    .line 4269
    :goto_4
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 4270
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 4272
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p3

    .line 4271
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .locals 11

    .line 4969
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4973
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4975
    :try_start_0
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4981
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4982
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 4984
    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4985
    const-string v7, "accessibility_floating_menu_size"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 4987
    const-string v8, "accessibility_floating_menu_icon_type"

    invoke-static {v4, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 4990
    const-string v9, "accessibility_floating_menu_fade_enabled"

    invoke-static {v4, v9, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_2

    move v6, v1

    .line 4993
    :cond_2
    const-string v9, "accessibility_floating_menu_opacity"

    const v10, 0x3f0ccccd    # 0.55f

    invoke-static {v4, v9, v10, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    .line 4998
    invoke-static {p1, v7, v8, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    move-result-object v5

    .line 4997
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 5006
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 5003
    :goto_1
    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string/jumbo p2, "pulling accessibility floating menu stats failed at getUsers"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5006
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5007
    throw p0
.end method

.method public pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I
    .locals 18

    move-object/from16 v0, p0

    .line 4917
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4921
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4923
    :try_start_0
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4924
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 4925
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 4927
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4928
    const-string v8, "accessibility_button_mode"

    .line 4929
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 4928
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToAccessibilityShortcutType(I)I

    move-result v10

    .line 4931
    const-string v8, "accessibility_button_targets"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4933
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v11

    .line 4936
    const-string v8, "accessibility_shortcut_target_service"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4938
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v13

    .line 4941
    const-string v8, "accessibility_qs_targets"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4943
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v17, v8, 0x1

    .line 4946
    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    const/4 v14, 0x3

    const/16 v16, 0x9

    const/16 v9, 0x278f

    const/4 v12, 0x2

    .line 4948
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p1

    goto :goto_0

    .line 4963
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 4960
    :goto_1
    :try_start_1
    const-string v1, "StatsPullAtomService"

    const-string/jumbo v5, "pulling accessibility shortcuts stats failed at getUsers"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4963
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4964
    throw v0
.end method

.method public pullAppOpsLocked(ILjava/util/List;)I
    .locals 10

    .line 4092
    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4094
    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 4096
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4097
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    .line 4098
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 4099
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 4100
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v4, 0x64

    .line 4103
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v3

    .line 4104
    invoke-virtual {p0, p2, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p0

    if-eq p0, v4, :cond_0

    .line 4106
    const-string p0, "Atom 10060 downsampled - too many dimensions"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4113
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 4110
    :goto_1
    :try_start_1
    const-string p1, "Could not read appops"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4113
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4114
    throw p0
.end method

.method public pullAppSizeLocked(ILjava/util/List;)I
    .locals 24

    .line 3054
    const-string v0, "StatsPullAtomService"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "/data/system/diskstats_cache.json"

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3055
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3056
    const-string/jumbo v2, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3057
    const-string/jumbo v2, "packageNames"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3058
    const-string v6, "appSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 3059
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 3060
    const-string v8, "cacheSizes"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3062
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 3063
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v8, :cond_2

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 3064
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    move/from16 v9, v16

    :goto_0
    if-ge v9, v8, :cond_1

    .line 3069
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3070
    invoke-virtual {v6, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v11

    move-wide/from16 v17, v11

    move-object v12, v10

    .line 3071
    invoke-virtual {v7, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    move-object/from16 v19, v7

    move-object v7, v12

    .line 3072
    invoke-virtual {v3, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v12

    move/from16 v20, v9

    move-object/from16 v21, v6

    move/from16 v6, p1

    move-wide/from16 v22, v17

    move-object/from16 v17, v21

    move/from16 v18, v8

    move-wide/from16 v8, v22

    .line 3069
    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v6, v17

    move/from16 v8, v18

    move-object/from16 v7, v19

    goto :goto_0

    :cond_1
    return v16

    .line 3065
    :cond_2
    :goto_1
    const-string v2, "formatting error in diskstats cache file!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3075
    :catch_0
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 7

    .line 3962
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3966
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 3967
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3968
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 3969
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-nez v4, :cond_2

    goto :goto_0

    .line 3974
    :cond_2
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3975
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3974
    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 3980
    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 3986
    :cond_4
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    move v4, v1

    goto :goto_1

    .line 3988
    :cond_5
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    .line 3990
    :cond_6
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_1

    .line 3996
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return v2
.end method

.method public pullAttributedAppOpsLocked(ILjava/util/List;)I
    .locals 9

    .line 4171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4173
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 4174
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4175
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    .line 4176
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    .line 4177
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    .line 4179
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 4180
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 4183
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v3, :cond_0

    .line 4184
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$4;

    invoke-direct {v4, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v5, 0xafc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v3, 0x64

    .line 4197
    iput v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4200
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 4201
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v2

    .line 4203
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-virtual {p0, p2, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p1

    .line 4205
    iget p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 4208
    :goto_1
    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not read appops"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4212
    throw p0
.end method

.method public pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .locals 4

    .line 2899
    const-class p0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2900
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez p0, :cond_0

    .line 2902
    const-string p0, "StatsPullAtomService"

    const-string p1, "failed to get binderStats"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 2906
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    .line 2909
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2911
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v0

    .line 2910
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public pullBinderCallsStatsLocked(ILjava/util/List;)I
    .locals 32

    .line 2868
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2869
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez v0, :cond_0

    .line 2871
    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to get binderStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 2875
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 2876
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2877
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2878
    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v7, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v11, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    move/from16 v29, v3

    const/16 p0, 0x0

    iget-wide v2, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    move/from16 v31, v0

    move-object/from16 v30, v1

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v21, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-boolean v5, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget v4, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move-wide/from16 v25, v0

    move-wide v15, v2

    move/from16 v28, v4

    move/from16 v27, v5

    move/from16 v5, p1

    invoke-static/range {v5 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v29

    move-object/from16 v1, v30

    move/from16 v0, v31

    goto :goto_0

    :cond_1
    const/16 p0, 0x0

    return p0
.end method

.method public pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .locals 12

    .line 2415
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2419
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    move-result-wide v1

    .line 2420
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    .line 2421
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v8

    .line 2422
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v10

    move v0, p1

    .line 2419
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .locals 7

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1959
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    .line 1961
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v5

    move v1, p1

    .line 1960
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public pullBuildInformationLocked(ILjava/util/List;)I
    .locals 10

    .line 3626
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final pullCachedAppsHighWatermark(ILjava/util/List;)I
    .locals 1

    .line 5125
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x1

    .line 5126
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManagerInternal;->getCachedAppsHighWatermarkStats(IZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/StatsEvent;

    .line 5125
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullCategorySizeLocked(ILjava/util/List;)I
    .locals 9

    .line 3093
    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3094
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3095
    const-string/jumbo p0, "queryTime"

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 3098
    const-string p0, "appSize"

    .line 3100
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x1

    move v3, p1

    .line 3098
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3103
    const-string p0, "appDataSize"

    .line 3105
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x2

    .line 3103
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3108
    const-string p0, "cacheSize"

    .line 3110
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x3

    .line 3108
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3113
    const-string/jumbo p0, "photosSize"

    .line 3115
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x4

    .line 3113
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3117
    const-string/jumbo p0, "videosSize"

    .line 3119
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x5

    .line 3117
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3121
    const-string p0, "audioSize"

    .line 3123
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x6

    .line 3121
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3125
    const-string p0, "downloadsSize"

    .line 3127
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x7

    .line 3125
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3130
    const-string/jumbo p0, "systemSize"

    .line 3132
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/16 v4, 0x8

    .line 3130
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    const-string/jumbo p0, "otherSize"

    .line 3136
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/16 v4, 0x9

    .line 3134
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    .line 3138
    :catch_0
    const-string p0, "StatsPullAtomService"

    const-string p1, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullCooldownDeviceLocked(ILjava/util/List;)I
    .locals 11

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2837
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2839
    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object p0

    .line 2840
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    .line 2842
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getType()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v9

    long-to-int v6, v9

    .line 2841
    invoke-static {p1, v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2849
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2846
    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2849
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    throw p0
.end method

.method public pullCpuActiveTimeLocked(ILjava/util/List;)I
    .locals 1

    .line 2265
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuClusterTimeLocked(ILjava/util/List;)I
    .locals 1

    .line 2287
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda29;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda29;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .locals 17

    move-object/from16 v0, p0

    .line 2059
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2060
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v6

    .line 2061
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v5

    .line 2062
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v7

    .line 2063
    array-length v2, v7

    new-array v8, v2, [D

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v9, v4

    .line 2068
    :goto_0
    array-length v10, v7

    if-ge v4, v10, :cond_1

    .line 2069
    aget v10, v6, v4

    if-eq v10, v3, :cond_0

    move v9, v2

    .line 2076
    :cond_0
    invoke-virtual {v1, v10, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v11

    aput-wide v11, v8, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    move v3, v10

    goto :goto_0

    .line 2082
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2083
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v0, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 2112
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2114
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2115
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    move v8, v2

    :goto_2
    if-ge v8, v5, :cond_2

    mul-int/lit8 v6, v8, 0x3

    .line 2117
    aget-wide v9, v3, v6

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    double-to-long v9, v9

    add-int/lit8 v11, v6, 0x1

    aget-wide v11, v3, v11

    double-to-long v11, v11

    add-int/lit8 v6, v6, 0x2

    aget-wide v13, v3, v6

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    double-to-long v13, v13

    move/from16 v6, p1

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v9

    move-object/from16 v6, p2

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .locals 8

    .line 2004
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object p0

    .line 2005
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v0

    .line 2006
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 2010
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2011
    aget v4, p0, v3

    .line 2012
    aget-wide v5, v0, v3

    long-to-int v5, v5

    .line 2013
    aget-wide v6, v1, v3

    .line 2014
    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .locals 37

    move-object/from16 v0, p0

    .line 3462
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3463
    const-string v0, "mKernelCpuThreadReader is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3467
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3469
    const-string/jumbo v0, "processCpuUsages is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3472
    :cond_1
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v0

    .line 3473
    array-length v4, v0

    const/16 v5, 0x8

    if-le v4, v5, :cond_2

    .line 3474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3476
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v4, 0x0

    move v6, v4

    .line 3479
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 3480
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 3481
    iget-object v8, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    move v9, v4

    .line 3483
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 3484
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 3485
    iget-object v11, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v11, v11

    array-length v12, v0

    if-eq v11, v12, :cond_3

    .line 3486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected number of usage times, expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but got "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3489
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3493
    :cond_3
    new-array v11, v5, [I

    .line 3494
    new-array v12, v5, [I

    move v13, v4

    :goto_2
    if-ge v13, v5, :cond_5

    .line 3496
    array-length v14, v0

    if-ge v13, v14, :cond_4

    .line 3497
    aget v14, v0, v13

    aput v14, v11, v13

    .line 3498
    iget-object v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v14, v14, v13

    aput v14, v12, v13

    goto :goto_3

    .line 3503
    :cond_4
    aput v4, v11, v13

    .line 3504
    aput v4, v12, v13

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3507
    :cond_5
    iget v15, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    iget v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v36, v3

    iget-object v3, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v10, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    aget v20, v11, v4

    aget v21, v12, v4

    aget v22, v11, v36

    aget v23, v12, v36

    const/16 v16, 0x2

    aget v24, v11, v16

    aget v25, v12, v16

    const/16 v16, 0x3

    aget v26, v11, v16

    aget v27, v12, v16

    const/16 v16, 0x4

    aget v28, v11, v16

    aget v29, v12, v16

    const/16 v16, 0x5

    aget v30, v11, v16

    aget v31, v12, v16

    const/16 v16, 0x6

    aget v32, v11, v16

    aget v33, v12, v16

    const/16 v16, 0x7

    aget v34, v11, v16

    aget v35, v12, v16

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v14, p1

    invoke-static/range {v14 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v36

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, p2

    move/from16 v36, v3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return v4
.end method

.method public pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .locals 10

    .line 2144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2145
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 2168
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    .line 2170
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2171
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move v5, v1

    .line 2172
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 2173
    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 2174
    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public pullCpuTimePerUidLocked(ILjava/util/List;)I
    .locals 1

    .line 2033
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3704
    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    const-string/jumbo v4, "permissions"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v9

    .line 3706
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 3708
    :try_start_0
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 3710
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 3712
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_9

    .line 3714
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 3717
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v4, 0x1000

    .line 3716
    invoke-virtual {v12, v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 3719
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_8

    .line 3721
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x1

    .line 3723
    :try_start_1
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v11, :cond_1

    :cond_0
    :goto_2
    move/from16 v17, v0

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move-object/from16 v0, p2

    goto/16 :goto_9

    .line 3727
    :cond_1
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    .line 3731
    :cond_2
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x2753

    if-ne v1, v11, :cond_3

    .line 3734
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v23, v7

    goto/16 :goto_a

    .line 3738
    :cond_3
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_0

    move/from16 v17, v0

    .line 3740
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 3745
    :try_start_2
    invoke-virtual {v12, v0, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v19

    .line 3746
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3747
    invoke-virtual {v12, v0, v3, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v2

    .line 3752
    :try_start_3
    const-string v2, "android.permission."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x13

    .line 3753
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/16 v2, 0x2742

    if-ne v1, v2, :cond_6

    .line 3758
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v5

    move v5, v3

    const-string v3, ""

    move-object/from16 v22, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v15

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    move v0, v4

    move/from16 v4, v16

    goto :goto_4

    :cond_5
    move v0, v4

    const/4 v4, 0x0

    .line 3763
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v23

    .line 3764
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    or-int v19, v23, v19

    move/from16 v23, v21

    move/from16 v21, v0

    move v0, v1

    move-object/from16 v1, v22

    move/from16 v22, v23

    move-wide/from16 v23, v7

    move-object v7, v6

    move/from16 v6, v19

    .line 3758
    :try_start_4
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v1

    :goto_5
    move-object/from16 v0, p2

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_6
    move-object v1, v0

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move v5, v3

    move-object v7, v6

    .line 3767
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v15

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move/from16 v3, v16

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .line 3772
    :goto_6
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    .line 3773
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    or-int/2addr v0, v4

    move v4, v5

    move v5, v0

    move/from16 v0, p1

    .line 3767
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v1

    goto :goto_5

    .line 3775
    :goto_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catch_0
    move-object/from16 v0, p2

    move-object/from16 v20, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move-object v7, v6

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move-object v6, v7

    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-wide/from16 v7, v23

    goto/16 :goto_3

    :goto_9
    add-int/lit8 v5, v22, 0x1

    move/from16 v1, p1

    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-wide/from16 v7, v23

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-wide/from16 v23, v7

    const/16 v16, 0x1

    goto :goto_a

    :cond_8
    move/from16 v17, v0

    move-wide/from16 v23, v7

    const/16 v16, 0x1

    move-object/from16 v0, p2

    add-int/lit8 v1, v17, 0x1

    move v0, v1

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v23, v7

    .line 3783
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3

    .line 3780
    :goto_a
    :try_start_5
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3783
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :catchall_3
    move-exception v0

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3784
    throw v0
.end method

.method public final pullDataBytesTransferLocked(ILjava/util/List;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1363
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 1365
    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_0

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current snapshot is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1370
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1371
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {v9, v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v8, v9}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    if-nez v8, :cond_1

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseline is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1381
    :cond_1
    new-instance v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v10, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v8, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1382
    invoke-virtual {v10, v8}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    move-object v10, v9

    iget-object v9, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    move-object v11, v10

    iget-boolean v10, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    move-object v12, v11

    iget-boolean v11, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    move-object v13, v12

    iget-boolean v12, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    move-object v14, v13

    iget v13, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    move-object v15, v14

    iget-object v14, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    move-object/from16 v16, v15

    iget v15, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iget-boolean v7, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    move-object/from16 v17, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v16}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    move-object v13, v7

    .line 1387
    iget-object v7, v13, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v7}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/16 v7, 0x2762

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2763

    if-eq v1, v7, :cond_4

    const/16 v7, 0x2774

    if-eq v1, v7, :cond_3

    .line 1400
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_0

    .line 1397
    :cond_3
    invoke-virtual {v0, v13, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1391
    :cond_4
    invoke-virtual {v0, v13, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1394
    :cond_5
    invoke-virtual {v0, v13, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugElapsedClockLocked(ILjava/util/List;)I
    .locals 12

    .line 3560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3561
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    :goto_0
    move-wide v7, v5

    goto :goto_1

    :cond_0
    sub-long v5, v3, v0

    goto :goto_0

    .line 3564
    :goto_1
    iget-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v9, 0x1

    move-wide v5, v3

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3569
    iget-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v5, 0x2

    rem-long v5, v1, v5

    const-wide/16 v10, 0x1

    cmp-long p1, v5, v10

    if-nez p1, :cond_1

    const/4 v9, 0x2

    move-wide v5, v3

    .line 3570
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3576
    :cond_1
    iget-wide p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long/2addr p1, v10

    iput-wide p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 3577
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .locals 9

    .line 3595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3597
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v7, 0x5

    rem-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-nez v0, :cond_0

    .line 3598
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3599
    const-string p0, "StatsPullAtomService"

    const-string p1, "Failing debug elapsed clock"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3607
    :cond_0
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_1

    :goto_0
    move-wide v1, v5

    goto :goto_1

    :cond_1
    sub-long v7, v3, v0

    goto :goto_0

    :goto_1
    move-wide v5, v3

    move v0, p1

    .line 3603
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .locals 2

    .line 3534
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 3536
    :try_start_0
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 3538
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v0

    .line 3537
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 3541
    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not obtain battery usage stats"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullDirectoryUsageLocked(ILjava/util/List;)I
    .locals 10

    .line 3019
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3020
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3021
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3022
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 3026
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    const/4 v5, 0x1

    move v4, p1

    .line 3024
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    move v3, v4

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3030
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x2

    .line 3028
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3034
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x3

    .line 3032
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3038
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x4

    .line 3036
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskIOLocked(ILjava/util/List;)I
    .locals 1

    .line 3391
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskStatsLocked(ILjava/util/List;)I
    .locals 8

    const/16 v0, 0x200

    .line 2960
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-byte v4, v3

    .line 2961
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2963
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 2969
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2970
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2975
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_2
    move-object v5, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v6, v5

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2979
    :catch_2
    :cond_1
    throw p0

    :goto_4
    if-eqz v6, :cond_2

    goto :goto_1

    .line 2981
    :catch_3
    :cond_2
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2982
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2984
    :cond_3
    const-string v0, "StatsPullAtomService"

    if-eqz v5, :cond_4

    .line 2985
    const-string v1, "Error performing diskstats latency test"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    .line 2989
    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v1

    .line 2993
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    return p0

    .line 2998
    :cond_5
    :try_start_4
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 3000
    :catch_4
    const-string/jumbo p0, "storaged not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 3004
    :goto_6
    invoke-static {p1, v6, v7, v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public pullExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 6

    .line 3917
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 3921
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 3922
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 3923
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 3924
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3925
    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3928
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_1

    .line 3930
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    .line 3936
    :goto_1
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_2

    .line 3938
    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    .line 3944
    :goto_2
    iget-wide v2, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public pullFaceSettingsLocked(ILjava/util/List;)I
    .locals 21

    move-object/from16 v0, p0

    .line 4014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4016
    :try_start_0
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 4050
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 4020
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4021
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_7

    .line 4023
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 4025
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4026
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "face_unlock_keyguard_enabled"

    .line 4025
    invoke-static {v9, v10, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 4028
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4029
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_dismisses_keyguard"

    .line 4028
    invoke-static {v10, v11, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 4031
    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4032
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_attention_required"

    .line 4031
    invoke-static {v11, v12, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 4034
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4035
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_app_enabled"

    .line 4034
    invoke-static {v12, v13, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 4037
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4038
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_always_require_confirmation"

    .line 4037
    invoke-static {v13, v14, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 4040
    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4041
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_diversity_required"

    .line 4040
    invoke-static {v14, v15, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v9, :cond_1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v6

    :goto_1
    if-eqz v10, :cond_2

    move/from16 v16, v4

    goto :goto_2

    :cond_2
    move/from16 v16, v6

    :goto_2
    if-eqz v11, :cond_3

    move/from16 v17, v4

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    :goto_3
    if-eqz v12, :cond_4

    move/from16 v18, v4

    goto :goto_4

    :cond_4
    move/from16 v18, v6

    :goto_4
    if-eqz v13, :cond_5

    move/from16 v19, v4

    goto :goto_5

    :cond_5
    move/from16 v19, v6

    :goto_5
    if-eqz v8, :cond_6

    move/from16 v20, v4

    :goto_6
    move/from16 v14, p1

    goto :goto_7

    :cond_6
    move/from16 v20, v6

    goto :goto_6

    .line 4044
    :goto_7
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 4050
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    throw v0
.end method

.method public final pullHdrCapabilities(ILjava/util/List;)I
    .locals 12

    .line 5106
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 5107
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 5109
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v3

    .line 5110
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v4

    .line 5113
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->hasDolbyVisionIssue(Landroid/view/Display;)Z

    move-result v10

    .line 5114
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v7

    if-eqz v3, :cond_2

    move v11, v5

    :goto_2
    move v6, p1

    goto :goto_3

    :cond_2
    move v11, v1

    goto :goto_2

    .line 5117
    :goto_3
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BZIZZ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final pullHealthHalLocked(ILjava/util/List;)I
    .locals 8

    .line 4478
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4483
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x2723

    const/4 v4, 0x0

    if-eq p1, v3, :cond_a

    const/16 v3, 0x2724

    if-eq p1, v3, :cond_9

    const/16 v3, 0x272e

    if-eq p1, v3, :cond_8

    const/16 v3, 0x273b

    if-eq p1, v3, :cond_7

    const/16 v3, 0x273d

    if-eq p1, v3, :cond_6

    const/16 v1, 0x27ec

    if-eq p1, v1, :cond_2

    return v2

    .line 4511
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/health/HealthServiceWrapper;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_3

    return v2

    .line 4521
    :cond_3
    :try_start_2
    new-instance v3, Landroid/os/BatteryProperty;

    invoke-direct {v3}, Landroid/os/BatteryProperty;-><init>()V

    .line 4522
    new-instance v5, Landroid/os/BatteryProperty;

    invoke-direct {v5}, Landroid/os/BatteryProperty;-><init>()V

    .line 4524
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v3}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v6

    if-gez v6, :cond_4

    return v2

    .line 4528
    :cond_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/16 v6, 0x9

    invoke-virtual {p0, v6, v5}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result p0

    if-gez p0, :cond_5

    return v2

    .line 4533
    :cond_5
    invoke-virtual {v3}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v6

    long-to-int p0, v6

    .line 4534
    invoke-virtual {v5}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v5

    long-to-int v3, v5

    .line 4535
    invoke-static {p1, v1, p0, v3}, Lcom/android/server/stats/pull/BatteryHealthUtility;->buildStatsEvent(ILandroid/hardware/health/BatteryHealthData;II)Landroid/util/StatsEvent;

    move-result-object p0

    .line 4537
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 4543
    :goto_0
    const-string p1, "Could not find message digest algorithm"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4541
    :goto_1
    const-string p1, "Failed to add pulled data"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :goto_2
    return v2

    .line 4506
    :cond_6
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    goto :goto_3

    .line 4494
    :cond_7
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_3

    .line 4503
    :cond_8
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    goto :goto_3

    .line 4500
    :cond_9
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    goto :goto_3

    .line 4497
    :cond_a
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 4549
    :goto_3
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :catch_3
    return v2
.end method

.method public pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .locals 14

    .line 4601
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4602
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4603
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4604
    const-string v1, "android.software.incremental_delivery"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4608
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4610
    :try_start_0
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 4611
    array-length v5, v1

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v1, v6

    .line 4612
    invoke-virtual {p0, v2, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    .line 4614
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 4615
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4616
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    .line 4615
    invoke-static {v10}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4617
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x3e8

    invoke-virtual {v0, v10, v11, v7}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v10

    .line 4619
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4621
    invoke-virtual {v10}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v11

    invoke-virtual {v10}, Landroid/content/pm/IncrementalStatesInfo;->getLoadingCompletedTime()J

    move-result-wide v12

    .line 4620
    invoke-static {p1, v9, v11, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJ)Landroid/util/StatsEvent;

    move-result-object v9

    move-object/from16 v11, p2

    .line 4619
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    move-object/from16 v11, p2

    goto :goto_1

    :cond_2
    move-object/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4629
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 4626
    :goto_2
    :try_start_1
    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to pullInstalledIncrementalPackagesLocked"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4629
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4630
    throw p0
.end method

.method public pullIonHeapSizeLocked(ILjava/util/List;)I
    .locals 2

    .line 2668
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int p0, v0

    .line 2669
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullKernelWakelockLocked(ILjava/util/List;)I
    .locals 8

    .line 1977
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 1978
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    .line 1979
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1980
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1981
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 1982
    iget v4, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget v5, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    iget-wide v6, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullKeystoreAtoms(ILjava/util/List;)I
    .locals 6

    .line 4870
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 4871
    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_0

    .line 4872
    const-string p0, "Keystore service is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4875
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4877
    :try_start_0
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v0

    const/16 v5, 0x2777

    if-eq p1, v5, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 4898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported keystore atom: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 4896
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4894
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4892
    :pswitch_2
    :try_start_3
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4890
    :pswitch_3
    :try_start_4
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4888
    :pswitch_4
    :try_start_5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4886
    :pswitch_5
    :try_start_6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4884
    :pswitch_6
    :try_start_7
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4882
    :pswitch_7
    :try_start_8
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4880
    :cond_1
    :try_start_9
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4906
    :goto_0
    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pulling keystore atom with tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 4903
    :goto_1
    :try_start_b
    const-string p1, "Disconnected from keystore service. Cannot pull."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4909
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4910
    throw p0

    :pswitch_data_0
    .packed-switch 0x2786
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pullLooperStatsLocked(ILjava/util/List;)I
    .locals 28

    .line 2930
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2935
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2936
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2937
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2938
    iget v3, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v9, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v11, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    iget-wide v13, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move v15, v3

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-object/from16 p0, v0

    iget-boolean v0, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move/from16 v24, v0

    iget-wide v0, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v26, v2

    move v3, v15

    move-wide/from16 v15, v16

    move/from16 v17, v24

    move-wide/from16 v24, v26

    move/from16 v2, p1

    move-wide/from16 v26, v0

    invoke-static/range {v2 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pullMediaCapabilitiesStats(ILjava/util/List;)I
    .locals 22

    move-object/from16 v1, p0

    .line 5012
    const-string v2, "StatsPullAtomService"

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    return v3

    .line 5015
    :cond_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return v3

    .line 5021
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    move-result-object v4

    .line 5022
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v8

    .line 5023
    invoke-virtual {v0}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v9

    .line 5024
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5025
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5026
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5027
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5028
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5030
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5033
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v10

    .line 5034
    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v11

    .line 5035
    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v12

    .line 5037
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 5038
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 5040
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v6

    .line 5041
    new-array v7, v5, [B

    if-eqz v6, :cond_4

    .line 5043
    invoke-virtual {v6}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v7

    :cond_4
    move-object v13, v7

    .line 5045
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([Landroid/view/Display$Mode;)[B

    move-result-object v14

    .line 5047
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    move-result-object v0

    const/4 v6, -0x1

    .line 5049
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5050
    new-instance v7, Landroid/media/MediaDrm;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {v7, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 5051
    invoke-virtual {v7}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_1
    move v15, v0

    goto :goto_3

    .line 5054
    :goto_2
    const-string/jumbo v7, "pulling hdcp level failed."

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v15, v6

    .line 5060
    :goto_3
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v16

    .line 5061
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v17

    .line 5063
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5065
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    move/from16 v18, v4

    goto :goto_4

    :cond_6
    move/from16 v18, v6

    :goto_4
    if-eqz v0, :cond_7

    .line 5067
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    :cond_7
    move/from16 v19, v6

    if-eqz v0, :cond_8

    .line 5069
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :goto_5
    move/from16 v20, v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 5072
    :goto_6
    :try_start_1
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 5073
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 5072
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v3, v5

    :goto_7
    move/from16 v21, v3

    :goto_8
    move/from16 v7, p1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 5077
    const-string/jumbo v1, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v21, v5

    goto :goto_8

    .line 5084
    :goto_9
    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    .line 5083
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public pullModemActivityInfoLocked(ILjava/util/List;)I
    .locals 27

    move-object/from16 v0, p0

    .line 2355
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2357
    :try_start_0
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2358
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    .line 2375
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 2399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 2389
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v7

    .line 2390
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v11

    const/4 v1, 0x0

    .line 2391
    invoke-virtual {v0, v1}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v13

    .line 2392
    invoke-virtual {v0, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v15

    const/4 v4, 0x2

    .line 2393
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v17

    const/4 v4, 0x3

    .line 2394
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v19

    const/4 v4, 0x4

    .line 2395
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v21

    .line 2396
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, -0x1

    move/from16 v6, p1

    .line 2388
    invoke-static/range {v6 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 2381
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception reading modem stats: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 2378
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeout or interrupt reading modem stats: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2400
    throw v0
.end method

.method public pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .locals 11

    .line 4376
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsPullAtomService"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v3

    const/4 p0, 0x1

    if-nez v3, :cond_0

    return p0

    .line 4380
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4383
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 4384
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    .line 4385
    invoke-virtual {v0, v7, v8, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 4387
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 4388
    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 4390
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p0, :cond_1

    .line 4404
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4393
    :cond_1
    :try_start_1
    invoke-static {p1, p2, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4404
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 4401
    :goto_0
    :try_start_2
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4404
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4398
    :goto_1
    :try_start_3
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4404
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4395
    :goto_2
    :try_start_4
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4404
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4405
    throw p0
.end method

.method public final pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .locals 8

    .line 3166
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3170
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3171
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3173
    :goto_0
    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3174
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/face/FaceManager;

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    if-nez v2, :cond_3

    return v0

    .line 3183
    :cond_3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_4

    return v0

    .line 3188
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3190
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3191
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p1, v0, :cond_5

    .line 3194
    invoke-virtual {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    if-ne p1, v3, :cond_6

    .line 3196
    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 3200
    :goto_2
    invoke-static {p2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3203
    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3204
    throw p0
.end method

.method public final pullPendingIntentsPerPackage(ILjava/util/List;)I
    .locals 3

    .line 5146
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5147
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    move-result-object p0

    .line 5148
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntentStats;

    .line 5149
    iget v1, v0, Landroid/app/PendingIntentStats;->uid:I

    iget v2, v0, Landroid/app/PendingIntentStats;->count:I

    iget v0, v0, Landroid/app/PendingIntentStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullPowerProfileLocked(ILjava/util/List;)I
    .locals 1

    .line 3412
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 3413
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 3414
    invoke-virtual {v0, p0}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 3415
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3416
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullPressureStallInformation(ILjava/util/List;)I
    .locals 20

    .line 5196
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiExtractor;

    invoke-direct {v0}, Lcom/android/server/stats/pull/psi/PsiExtractor;-><init>()V

    .line 5197
    invoke-static {}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5198
    invoke-virtual {v0, v5}, Lcom/android/server/stats/pull/psi/PsiExtractor;->getPsiData(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to pull PressureStallInformation atom for resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5203
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5200
    const-string v6, "StatsPullAtomService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    goto :goto_1

    .line 5208
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getResourceType()Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v5

    move-object/from16 v7, p0

    invoke-virtual {v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toProtoPsiResourceType(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)I

    move-result v9

    .line 5209
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg10SecPercentage()F

    move-result v10

    .line 5210
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg60SecPercentage()F

    move-result v11

    .line 5211
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg300SecPercentage()F

    move-result v12

    .line 5212
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeTotalUsec()J

    move-result-wide v13

    .line 5213
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg10SecPercentage()F

    move-result v15

    .line 5214
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg60SecPercentage()F

    move-result v16

    .line 5215
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg300SecPercentage()F

    move-result v17

    .line 5216
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullTotalUsec()J

    move-result-wide v18

    move/from16 v8, p1

    .line 5206
    invoke-static/range {v8 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIFFFJFFFJ)Landroid/util/StatsEvent;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final pullProcStatsLocked(ILjava/util/List;)I
    .locals 5

    .line 3290
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 3294
    new-array v1, v0, [Landroid/util/proto/ProtoOutputStream;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3296
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0xe666

    .line 3298
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    move p0, v2

    :goto_1
    if-ge p0, v0, :cond_3

    .line 3300
    aget-object v3, v1, p0

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 3301
    array-length v4, v3

    if-lez v4, :cond_2

    .line 3303
    invoke-static {p1, v3, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v3

    .line 3302
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public final pullProcessAssociationLocked(ILjava/util/List;)I
    .locals 1

    .line 3331
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3335
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessAssociation(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullProcessCpuTimeLocked(ILjava/util/List;)I
    .locals 10

    .line 3435
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3436
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3437
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 3439
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move v0, v1

    .line 3440
    :goto_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3441
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 3442
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move p1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public pullProcessDmabufMemory(ILjava/util/List;)I
    .locals 14

    .line 2706
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2711
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2712
    iget v5, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iget-object v6, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iget v8, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iget v9, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    iget v12, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iget v13, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .locals 12

    .line 2545
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 2546
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 2547
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object p0

    .line 2548
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x400

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 2549
    iget v4, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 2553
    :cond_0
    iget v6, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v7, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v4, v10

    mul-long v8, v4, v2

    move v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object p1

    move v4, v5

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v4

    goto :goto_0

    :cond_1
    move v4, p1

    .line 2560
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object p1

    .line 2561
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2562
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_3

    .line 2564
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 2568
    iget v5, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2569
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v10, v9

    mul-long/2addr v10, v2

    move-object v6, v7

    move-wide v7, v10

    .line 2568
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2575
    :cond_3
    const-string/jumbo p0, "sys.rss_hwm_reset.on"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public pullProcessMemorySnapshot(ILjava/util/List;)I
    .locals 21

    move-object/from16 v0, p2

    .line 2590
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2591
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2592
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2594
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    move-result-object v2

    .line 2595
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 2596
    array-length v4, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v2, v6

    .line 2597
    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iget v7, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2599
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    .line 2600
    iget v6, v4, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 2604
    :cond_1
    iget v8, v4, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v9, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Landroid/app/ProcessMemoryState;->pid:I

    iget v11, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v12, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v13, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v14, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v15, v13, v14

    .line 2608
    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    iget-boolean v7, v4, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    iget v6, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    const/16 p0, 0x0

    iget v5, v4, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    iget v4, v4, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    move/from16 v20, v4

    move/from16 v19, v5

    move/from16 v18, v6

    move/from16 v17, v7

    move/from16 v7, p1

    .line 2604
    invoke-static/range {v7 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIII)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 p0, 0x0

    .line 2615
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    .line 2616
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda27;

    invoke-direct {v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda27;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2617
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move/from16 v4, p0

    :goto_2
    if-ge v4, v1, :cond_4

    .line 2619
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2620
    invoke-static {v8}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 2624
    :cond_3
    iget v6, v5, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2625
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v10, v5, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v11, v5, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v12, v5, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v13, v11, v12

    .line 2629
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    iget v5, v5, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v9, -0x3e9

    const/4 v15, 0x0

    move/from16 v16, v5

    move/from16 v5, p1

    .line 2624
    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIII)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return p0
.end method

.method public pullProcessMemoryStateLocked(ILjava/util/List;)I
    .locals 22

    .line 2517
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2518
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2519
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 2521
    iget v2, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget v3, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2526
    :cond_0
    iget v4, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v5, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v6, v1, Landroid/app/ProcessMemoryState;->oomScore:I

    iget-wide v7, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v1, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    const-wide/16 v19, -0x1

    const/16 v21, -0x1

    const-wide/16 v17, -0x1

    move/from16 v3, p1

    move-wide v15, v1

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final pullProcessStateLocked(ILjava/util/List;)I
    .locals 1

    .line 3321
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3325
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessState(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 11

    .line 2684
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object p0

    .line 2685
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2686
    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2687
    invoke-static {v1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    long-to-int v1, v1

    move-wide v7, v5

    iget v6, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v9, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v9, v7

    long-to-int v7, v9

    move v2, p1

    move v5, v1

    .line 2686
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullRoleHolderLocked(ILjava/util/List;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3644
    const-string v3, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3646
    :try_start_0
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3647
    const-class v7, Lcom/android/role/RoleManagerLocal;

    invoke-static {v7}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/role/RoleManagerLocal;

    .line 3650
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_3

    .line 3654
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 3656
    invoke-interface {v7, v11}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v12

    .line 3658
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3659
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3660
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 3662
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3663
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v0

    const/4 v9, 0x0

    .line 3666
    :try_start_1
    invoke-virtual {v6, v15, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3667
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 3669
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Role holder "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not found for user "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 3673
    :goto_3
    invoke-static {v1, v0, v15, v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_2

    :cond_0
    move-object/from16 v16, v0

    goto :goto_4

    :cond_1
    move-object/from16 v16, v0

    .line 3678
    const-string v0, ""

    const/4 v9, -0x1

    invoke-static {v1, v9, v0, v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    move-object/from16 v0, v16

    goto :goto_1

    :cond_2
    move-object/from16 v16, v0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 3687
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v9, 0x0

    return v9

    .line 3684
    :goto_5
    :try_start_3
    const-string v1, "Could not read role holders"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3687
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3688
    throw v0
.end method

.method public pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .locals 14

    .line 4299
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 4301
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 4303
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 4305
    const-string p0, "No runtime appop access message collected"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 4309
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isHealthAppOp(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 4324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 4314
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v7

    .line 4315
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 4316
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    :goto_0
    move-object v10, p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4317
    :goto_1
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v12

    .line 4318
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v13

    move v6, p1

    .line 4314
    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object p0

    move-object/from16 v0, p2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 4321
    :goto_2
    :try_start_3
    const-string v0, "Could not read runtime appop access message"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4325
    throw p0
.end method

.method public pullSettingsStatsLocked(ILjava/util/List;)I
    .locals 7

    .line 4564
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4569
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4571
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4572
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-nez v4, :cond_1

    .line 4575
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 4578
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4579
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4585
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 4582
    :goto_2
    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullSettingsStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4585
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4586
    throw p0
.end method

.method public pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .locals 2

    .line 2484
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 2

    .line 2649
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 2650
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemMemory(ILjava/util/List;)I
    .locals 25

    .line 2739
    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object v0

    .line 2740
    iget v2, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    iget v3, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    iget v4, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    iget v5, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    iget v6, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iget v7, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    iget v8, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iget v9, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iget v10, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    iget v11, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    iget v12, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalKb:I

    iget v13, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->freeKb:I

    iget v14, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->availableKb:I

    iget v15, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeKb:I

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveKb:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeAnonKb:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveAnonKb:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeFileKb:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveFileKb:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapTotalKb:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapFreeKb:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaTotalKb:I

    iget v0, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaFreeKb:I

    move/from16 v24, v0

    move/from16 v23, v1

    move/from16 v1, p1

    .line 2741
    invoke-static/range {v1 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    .line 2740
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public pullSystemServerPinnerStats(ILjava/util/List;)I
    .locals 3

    .line 5235
    const-class p0, Lcom/android/server/pinner/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pinner/PinnerService;

    .line 5236
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->dumpDataForStatsd()Ljava/util/List;

    move-result-object p0

    .line 5237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    .line 5238
    iget v1, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->uid:I

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemUptimeLocked(ILjava/util/List;)I
    .locals 2

    .line 2499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullTemperatureLocked(ILjava/util/List;)I
    .locals 11

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2805
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2807
    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object p0

    .line 2808
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    .line 2809
    invoke-virtual {v6}, Landroid/os/Temperature;->getType()I

    move-result v7

    .line 2810
    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    .line 2809
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2817
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2814
    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2817
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2818
    throw p0
.end method

.method public pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .locals 0

    .line 3801
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3807
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 3803
    const-string p1, "StatsPullAtomService"

    const-string p2, "Getting tzdb version failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .locals 18

    .line 3822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3824
    :try_start_0
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3825
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3827
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    .line 3829
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v4

    .line 3830
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v5

    .line 3831
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getUserLocationEnabledSetting()Z

    move-result v6

    .line 3832
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v7

    .line 3833
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v8

    .line 3834
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v9

    .line 3835
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v10

    .line 3837
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3836
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v11

    .line 3839
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3838
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v12

    .line 3841
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3840
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v13

    .line 3842
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyTimeZoneFallbackSupported()Z

    move-result v14

    .line 3843
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v15

    .line 3844
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isEnhancedMetricsCollectionEnabled()Z

    move-result v16

    .line 3845
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v17

    move/from16 v3, p1

    .line 3828
    invoke-static/range {v3 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3848
    :try_start_1
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3851
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3852
    throw v0
.end method

.method public pullUwbActivityInfoLocked(ILjava/util/List;)I
    .locals 13

    .line 2440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 2442
    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "uwb"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2443
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda28;

    invoke-direct {v5, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda28;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {p0, v4, v5}, Landroid/uwb/UwbManager;->getUwbActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2450
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/uwb/UwbActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 2464
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2456
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 2457
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    .line 2458
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v9

    .line 2459
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerWakeCount()J

    move-result-wide v11

    move v4, p1

    .line 2455
    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2454
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2461
    :try_start_2
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to getUwbActivityEnergyInfoAsync"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2464
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    throw p0
.end method

.method public pullVmStat(ILjava/util/List;)I
    .locals 0

    .line 2780
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readVmStat()Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2782
    iget p0, p0, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 2783
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2782
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullWifiActivityInfoLocked(ILjava/util/List;)I
    .locals 16

    move-object/from16 v0, p0

    .line 2307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 2309
    :try_start_0
    new-instance v4, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v4, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2310
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v6, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v0}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 2325
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2339
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2330
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v5

    .line 2331
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 2332
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 2333
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v12

    .line 2334
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v14

    move/from16 v4, p1

    .line 2330
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    .line 2329
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2339
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2336
    :try_start_2
    const-string v4, "StatsPullAtomService"

    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2339
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    throw v0
.end method

.method public final readProcStatsHighWaterMark(I)J
    .locals 5

    .line 3355
    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 3356
    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3361
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    .line 3364
    :cond_0
    array-length p1, p0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    .line 3365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 1 file expected for high water mark. Found "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 3367
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :cond_2
    :goto_1
    return-wide v1

    .line 3371
    :goto_2
    const-string p1, "Failed to parse file name."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 3369
    :goto_3
    const-string p1, "Failed to get procstats high watermark file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-wide v1
.end method

.method public final registerAccessibilityFloatingMenuStats()V
    .locals 4

    .line 4718
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2790

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAccessibilityShortcutStats()V
    .locals 4

    .line 4708
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppOps()V
    .locals 4

    .line 4057
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppSize()V
    .locals 4

    .line 3044
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppsOnExternalStorageInfo()V
    .locals 4

    .line 3953
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2749

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAttributedAppOps()V
    .locals 4

    .line 4162
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x275b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryCycleCount()V
    .locals 4

    .line 4461
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryHealth()V
    .locals 4

    .line 4471
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27ec

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryLevel()V
    .locals 4

    .line 4421
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryVoltage()V
    .locals 4

    .line 4451
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStats()V
    .locals 6

    .line 2856
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2857
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2858
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2859
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2726

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStatsExceptions()V
    .locals 4

    .line 2890
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2727

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothActivityInfo()V
    .locals 4

    .line 2406
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothBytesTransfer()V
    .locals 4

    .line 1881
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 1882
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1883
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1884
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2716

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBuildInformation()V
    .locals 4

    .line 3617
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBytesTransferByTagAndMetered()V
    .locals 5

    .line 1842
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x5

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1843
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1845
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2763

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCachedAppsHighWatermarkPuller()V
    .locals 4

    .line 5177
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27cd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCategorySize()V
    .locals 4

    .line 3083
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCoolingDevice()V
    .locals 4

    .line 2824
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuActiveTime()V
    .locals 4

    .line 2253
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2254
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2255
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2256
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2720

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuClusterTime()V
    .locals 4

    .line 2275
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2276
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2277
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2278
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2721

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuCyclesPerThreadGroupCluster()V
    .locals 0

    .line 2183
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    return-void
.end method

.method public final registerCpuCyclesPerUidCluster()V
    .locals 4

    .line 2044
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2046
    :cond_1
    :goto_0
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    .line 2047
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2049
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2770

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuTimePerClusterFreq()V
    .locals 4

    .line 1989
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 1992
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1993
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1994
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x276f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_0
    return-void
.end method

.method public final registerCpuTimePerThreadFreq()V
    .locals 4

    .line 3450
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 3451
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3452
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3453
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2735

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method public final registerCpuTimePerUid()V
    .locals 4

    .line 2021
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 2022
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2024
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2719

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuTimePerUidFreq()V
    .locals 4

    .line 2131
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2132
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2133
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2134
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271a

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionState()V
    .locals 4

    .line 3694
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionStateSampled()V
    .locals 4

    .line 4411
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2753

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDataUsageBytesTransfer()V
    .locals 5

    .line 1855
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1856
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1857
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2762

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDebugElapsedClock()V
    .locals 5

    .line 3548
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 3549
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3550
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3551
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDebugFailingElapsedClock()V
    .locals 5

    .line 3583
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 3584
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3585
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3586
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDeviceCalculatedPowerUse()V
    .locals 4

    .line 3525
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2737

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDirectoryUsage()V
    .locals 4

    .line 3010
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDiskIO()V
    .locals 4

    .line 3378
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 3379
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 3380
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3381
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3382
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2730

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public final registerDiskStats()V
    .locals 4

    .line 2950
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2729

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerEventListeners()V
    .locals 5

    .line 956
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 957
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 959
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 960
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 967
    :try_start_0
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    invoke-interface {p0, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 968
    const-string/jumbo p0, "register thermal listener successfully"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 970
    :catch_0
    const-string p0, "failed to register thermal listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final registerExternalStorageInfo()V
    .locals 4

    .line 3908
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2745

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFaceSettings()V
    .locals 4

    .line 4005
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFullBatteryCapacity()V
    .locals 4

    .line 4441
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerHdrCapabilitiesPuller()V
    .locals 4

    .line 5167
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerInstalledIncrementalPackages()V
    .locals 4

    .line 4592
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2782

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerIonHeapSize()V
    .locals 4

    .line 2655
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2659
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2756

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKernelWakelock()V
    .locals 4

    .line 1968
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreAtomWithOverflow()V
    .locals 4

    .line 4667
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2789

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreCrashStats()V
    .locals 4

    .line 4699
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithAuthInfo()V
    .locals 4

    .line 4651
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2787

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithGeneralInfo()V
    .locals 4

    .line 4643
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2786

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithPurposeModesInfo()V
    .locals 4

    .line 4659
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2788

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithGeneralInfo()V
    .locals 4

    .line 4683
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithPurposeAndModesInfo()V
    .locals 4

    .line 4675
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreStorageStats()V
    .locals 4

    .line 4635
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2777

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerLooperStats()V
    .locals 6

    .line 2918
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x7

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2919
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2920
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2921
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2728

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMediaCapabilitiesStats()V
    .locals 4

    .line 4728
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2792

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransfer()V
    .locals 5

    .line 1803
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1804
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1805
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1806
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2712

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransferBackground()V
    .locals 5

    .line 1816
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1817
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1819
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2713

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransferByProcState()V
    .locals 5

    .line 1153
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1155
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x27dc

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerModemActivityInfo()V
    .locals 4

    .line 2346
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNotificationRemoteViews()V
    .locals 4

    .line 4367
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2752

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFacesEnrolled()V
    .locals 4

    .line 3156
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2740

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFingerprintsEnrolled()V
    .locals 4

    .line 3146
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerOemManagedBytesTransfer()V
    .locals 5

    .line 1868
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x6

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1869
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1870
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1871
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2774

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPendingIntentsPerPackagePuller()V
    .locals 4

    .line 5097
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPinnerServiceStats()V
    .locals 4

    .line 5157
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPowerProfile()V
    .locals 4

    .line 3403
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2731

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPressureStallInformation()V
    .locals 4

    .line 5187
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStats()V
    .locals 4

    .line 3210
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStatsPkgProc()V
    .locals 4

    .line 3220
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2732

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessAssociation()V
    .locals 4

    .line 3239
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessCpuTime()V
    .locals 4

    .line 3423
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x1388

    .line 3424
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3425
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3426
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2733

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessDmabufMemory()V
    .locals 4

    .line 2696
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2779

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryHighWaterMark()V
    .locals 4

    .line 2536
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemorySnapshot()V
    .locals 4

    .line 2581
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2750

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryState()V
    .locals 6

    .line 2505
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2506
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2507
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2508
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271d

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessState()V
    .locals 4

    .line 3230
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessSystemIonHeapSize()V
    .locals 4

    .line 2675
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProxyBytesTransferBackground()V
    .locals 5

    .line 1829
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1830
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1831
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1832
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x27d8

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerPullers()V
    .locals 2

    .line 977
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 980
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 981
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 982
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    .line 983
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    .line 985
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 986
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerThreadGroupCluster()V

    .line 987
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 988
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 989
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 990
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 991
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 992
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 993
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 994
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    .line 995
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 996
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 997
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 998
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 999
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessState()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessAssociation()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryHealth()V

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreStorageStats()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithGeneralInfo()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithAuthInfo()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithPurposeModesInfo()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreAtomWithOverflow()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithPurposeAndModesInfo()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithGeneralInfo()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpErrorStats()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreCrashStats()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityShortcutStats()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityFloatingMenuStats()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMediaCapabilitiesStats()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPendingIntentsPerPackagePuller()V

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPinnerServiceStats()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerHdrCapabilitiesPuller()V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCachedAppsHighWatermarkPuller()V

    .line 1062
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_PRESSURE_STALL_INFORMATION_PULLER:Z

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPressureStallInformation()V

    :cond_0
    return-void
.end method

.method public final registerRemainingBatteryCapacity()V
    .locals 4

    .line 4431
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2723

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRkpErrorStats()V
    .locals 4

    .line 4691
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRoleHolder()V
    .locals 4

    .line 3634
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2741

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRuntimeAppOpAccessMessage()V
    .locals 4

    .line 4067
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2755

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSettingsStats()V
    .locals 4

    .line 4555
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2760

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemElapsedRealtime()V
    .locals 4

    .line 2471
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x3e8

    .line 2472
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 2473
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2474
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2475
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemIonHeapSize()V
    .locals 4

    .line 2640
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2748

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemMemory()V
    .locals 4

    .line 2730
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x276c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemUptime()V
    .locals 4

    .line 2490
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTemperature()V
    .locals 4

    .line 2792
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2725

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDataInfo()V
    .locals 4

    .line 3790
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2744

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDetectorState()V
    .locals 4

    .line 3813
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2776

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerUwbActivityInfo()V
    .locals 4

    .line 2427
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    if-nez v0, :cond_0

    return-void

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27cc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerVmStat()V
    .locals 4

    .line 2771
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2785

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiActivityInfo()V
    .locals 4

    .line 2298
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransfer()V
    .locals 5

    .line 1277
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1278
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1279
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1280
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransferBackground()V
    .locals 5

    .line 1790
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1791
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1792
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1793
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2711

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 4120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    .line 4122
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 4123
    iget v9, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge v9, v4, :cond_0

    iget-object v9, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->isHealthAppOp(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v2, v4

    move/from16 v22, v5

    move/from16 v23, v7

    goto/16 :goto_2

    :cond_1
    const/16 v9, 0x275b

    const/16 v10, 0x9

    if-ne v3, v9, :cond_2

    .line 4128
    iget v4, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    move v9, v5

    iget-object v5, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    move v11, v6

    iget-object v6, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4129
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v12

    iget-object v13, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4130
    invoke-virtual {v13, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v13

    iget-object v15, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4131
    invoke-virtual {v15, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v15

    iget-object v11, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4132
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v18

    iget-object v11, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4133
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v20

    iget-object v11, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4134
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v22

    iget-object v11, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4135
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v10

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v8, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4136
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v2, 0x0

    move/from16 v24, v3

    move/from16 v3, p3

    move-wide/from16 v25, v20

    move/from16 v21, p4

    move/from16 v20, v24

    move-wide/from16 v27, v22

    move/from16 v23, v7

    move/from16 v22, v9

    move v7, v12

    move-wide v8, v13

    move-wide/from16 v12, v18

    move-wide/from16 v18, v10

    move-wide v10, v15

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    .line 4128
    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v4

    move/from16 v2, p4

    goto :goto_1

    :cond_2
    move/from16 v22, v5

    move v2, v6

    move/from16 v23, v7

    .line 4139
    iget v4, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4140
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v11

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4141
    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v13

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4142
    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v15

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4143
    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v17

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4144
    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v19

    iget-object v3, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4145
    invoke-virtual {v3, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v9

    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v7, v8, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 4146
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    move-wide/from16 v7, v17

    move-wide/from16 v17, v9

    move-wide v9, v13

    move-wide v13, v7

    move/from16 v2, p4

    move-wide v7, v11

    move-wide v11, v15

    move-wide/from16 v15, v19

    move/from16 v19, v3

    move/from16 v3, p3

    .line 4139
    invoke-static/range {v3 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    move-result-object v4

    .line 4148
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v23, 0x1

    move v4, v2

    move/from16 v5, v22

    const/4 v6, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 4150
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x320

    if-le v4, v5, :cond_4

    mul-int/lit16 v4, v2, 0x1f4

    .line 4152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x0

    .line 4151
    invoke-static {v4, v11, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 4154
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v4, p2

    .line 4155
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v0

    return v0

    :cond_4
    return v2
.end method

.method public final sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .locals 2

    .line 1773
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 1775
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1777
    :cond_0
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 1778
    new-instance p1, Landroid/net/NetworkStats;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p1, p0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0

    .line 1780
    :cond_1
    new-instance p1, Landroid/net/NetworkStats;

    const/4 p2, 0x1

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1781
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 1782
    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    .line 1711
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    .line 1698
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    .line 1724
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    .line 1737
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final toBytes(Ljava/util/List;)[B
    .locals 3

    .line 5245
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide v1, 0x20e00000001L

    .line 5247
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 5251
    :cond_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([I)[B
    .locals 5

    .line 5255
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5256
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    const-wide v3, 0x20e00000001L

    .line 5257
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5261
    :cond_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([Landroid/view/Display$Mode;)[B
    .locals 8

    .line 5265
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;

    move-result-object p0

    .line 5266
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5267
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5268
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5271
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    const-wide v6, 0x10500000001L

    .line 5269
    invoke-virtual {v4, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 5274
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    .line 5272
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10200000003L

    .line 5277
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    .line 5275
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5280
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide v5, 0x10500000004L

    .line 5278
    invoke-virtual {v4, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x20b00000001L

    .line 5284
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 5281
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5286
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toProtoPsiResourceType(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)I
    .locals 0

    .line 5222
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5224
    :cond_0
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 5226
    :cond_1
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
