.class public Lcom/android/server/power/stats/WifiPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "WifiPowerStatsCollector.java"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public final mLastScanTimes:Landroid/util/SparseArray;

.field public mLastWifiActiveDuration:J

.field public mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Ljava/util/function/Supplier;

.field public final mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

.field public mPowerReportingSupported:Z

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

.field public volatile mWifiManager:Landroid/net/wifi/WifiManager;

.field public volatile mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;


# direct methods
.method public static synthetic $r8$lambda$wa61-wcxIfhXx-hiP5ddUIUF1Vk(Lcom/android/server/power/stats/WifiPowerStatsCollector;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->lambda$collectWifiScanTime$0(IJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;)V
    .locals 6

    .line 97
    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v0, 0xb

    .line 98
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 92
    new-instance p0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector-IA;)V

    iput-object p0, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 93
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    .line 101
    iput-object p1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    .line 102
    iput-object p2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    return-void
.end method

.method private collectNetworkStats()Landroid/net/NetworkStats;
    .locals 14

    .line 232
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v1, v0, v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 238
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 239
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 240
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    .line 241
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v5

    .line 242
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    .line 243
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v3, v11

    if-nez v13, :cond_1

    cmp-long v13, v5, v11

    if-nez v13, :cond_1

    cmp-long v13, v7, v11

    if-nez v13, :cond_1

    cmp-long v11, v9, v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    iget-object v11, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v2

    .line 249
    iget-object v11, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    if-nez v11, :cond_2

    .line 251
    iget-object v11, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v11

    new-array v11, v11, [J

    .line 252
    iget-object v12, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v12, v12, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 254
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11, v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 255
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 256
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11, v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxPackets([JJ)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v12

    add-long/2addr v12, v3

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 259
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 260
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 261
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxPackets([JJ)V

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method private ensureInitialized()Z
    .locals 11

    .line 117
    iget-boolean v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiNetworkStatsSupplier()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiStatsRetriever()Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    .line 131
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 134
    new-instance v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;-><init>(IZ)V

    iput-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 137
    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 139
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v9

    const/16 v5, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 143
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 144
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 146
    iput-boolean v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 9

    .line 152
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 157
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 160
    iget-boolean v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiActivityInfo()Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiActivityStats()V

    goto :goto_0

    .line 165
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectNetworkStats()Landroid/net/NetworkStats;

    move-result-object v4

    .line 166
    invoke-virtual {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiScanTime()V

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 170
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    if-eqz v2, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 171
    invoke-interface/range {v2 .. v8}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;->onWifiPowerStatsRetrieved(Landroid/os/connectivity/WifiActivityEnergyInfo;Landroid/net/NetworkStats;JJ)V

    .line 174
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public final collectWifiActivityInfo()Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 15

    .line 178
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 180
    new-instance v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    const/4 v1, 0x0

    .line 184
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    const-string v2, "WifiPowerStatsCollector"

    const-string v3, "Cannot acquire WifiActivityEnergyInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 202
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 203
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 204
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 205
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 206
    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 207
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 208
    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    move-wide v9, v1

    move-wide v11, v5

    move-wide v13, v7

    move-wide v7, v3

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v7, v1

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceRxTime([JJ)V

    .line 212
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceTxTime([JJ)V

    .line 213
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceScanTime([JJ)V

    .line 214
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 216
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long v2, v9, v7

    add-long/2addr v2, v11

    add-long/2addr v2, v13

    iput-wide v2, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 218
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 220
    new-instance v3, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v4

    .line 221
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v6

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    return-object v3
.end method

.method public final collectWifiActivityStats()V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;->getWifiActiveDuration()J

    move-result-wide v0

    .line 226
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-wide v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceActiveTime([JJ)V

    .line 227
    iput-wide v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    .line 228
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iput-wide v0, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    return-void
.end method

.method public final collectWifiScanTime()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 269
    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 270
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    new-instance v1, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector;)V

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;->retrieveWifiScanTimes(Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever$Callback;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v2, v2, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceBasicScanTime([JJ)V

    .line 301
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceBatchedScanTime([JJ)V

    return-void
.end method

.method public final synthetic lambda$collectWifiScanTime$0(IJJ)V
    .locals 9

    .line 271
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector-IA;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 278
    iget-wide v5, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    sub-long v5, p4, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    cmp-long v3, v5, v3

    if-eqz v3, :cond_3

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    add-long/2addr v7, v1

    iput-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 282
    iget-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 283
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 284
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-nez v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v3

    new-array v3, v3, [J

    .line 287
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidScanTime([JJ)V

    .line 289
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidBatchScanTime([JJ)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {p1, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v7

    add-long/2addr v7, v1

    invoke-virtual {p1, v3, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidScanTime([JJ)V

    .line 292
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 293
    invoke-virtual {p0, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v1

    add-long/2addr v1, v5

    .line 292
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidBatchScanTime([JJ)V

    .line 296
    :cond_3
    :goto_0
    iput-wide p2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 297
    iput-wide p4, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 307
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    const-string v1, "android.hardware.wifi"

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 109
    :cond_0
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void

    .line 112
    :cond_1
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void
.end method
