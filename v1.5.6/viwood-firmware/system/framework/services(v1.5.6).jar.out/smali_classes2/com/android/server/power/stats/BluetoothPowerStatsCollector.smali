.class public Lcom/android/server/power/stats/BluetoothPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "BluetoothPowerStatsCollector.java"


# instance fields
.field public mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mLastIdleTime:J

.field public mLastRxTime:J

.field public mLastTxTime:J

.field public mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field public final mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mUidStats:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$3824U9J2kTG05xiNsh4SEdMikUA(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->lambda$collectBluetoothScanStats$0(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;)V
    .locals 6

    .line 98
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x2

    .line 99
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 101
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    .line 102
    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 95
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 103
    iput-object p1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    .line 104
    iput-object p2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    return-void
.end method


# virtual methods
.method public final collectBluetoothActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 14

    .line 169
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 192
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    const-string v1, "BluetoothPowerStatsCollector"

    const-string v3, "Cannot acquire BluetoothActivityEnergyInfo"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 203
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v3

    .line 204
    iget-wide v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 205
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v9, v5, v6}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceRxTime([JJ)V

    .line 206
    iput-wide v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    .line 208
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v3

    .line 209
    iget-wide v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    sub-long v9, v3, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 210
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v11, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v11, v9, v10}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceTxTime([JJ)V

    .line 211
    iput-wide v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v3

    .line 214
    iget-wide v11, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    sub-long v11, v3, v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 215
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v13, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1, v13, v11, v12}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 216
    iput-wide v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    .line 218
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long/2addr v5, v9

    add-long/2addr v5, v11

    iput-wide v5, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 222
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/UidTraffic;

    .line 223
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v5

    .line 224
    iget-object v6, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    if-nez v6, :cond_2

    .line 226
    new-instance v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    invoke-direct {v6, v2}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector-IA;)V

    .line 227
    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    :cond_2
    iget-wide v9, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 230
    iget-wide v9, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v9, v4

    iput-wide v9, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_7

    .line 234
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 235
    iget-wide v3, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    sub-long/2addr v3, v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 236
    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iput-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    .line 237
    iput-wide v7, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 239
    iget-wide v5, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    iget-wide v9, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    sub-long/2addr v5, v9

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 240
    iget-wide v9, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    iput-wide v9, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    .line 241
    iput-wide v7, v2, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    cmp-long v2, v3, v7

    if-nez v2, :cond_4

    cmp-long v2, v5, v7

    if-eqz v2, :cond_6

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 245
    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    if-nez v9, :cond_5

    .line 247
    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v9

    new-array v9, v9, [J

    .line 248
    iget-object v10, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v10, v10, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 252
    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v2, v9, v5, v6}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidTxBytes([JJ)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public final collectBluetoothScanStats()V
    .locals 10

    .line 260
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    new-instance v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;)V

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;->retrieveBluetoothScanTimes(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 272
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 273
    iget-wide v6, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    cmp-long v8, v6, v1

    if-nez v8, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 278
    iget-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    iput-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    .line 279
    iput-wide v1, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    cmp-long v5, v6, v1

    if-eqz v5, :cond_2

    .line 282
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 283
    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-nez v8, :cond_1

    .line 285
    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    new-array v8, v8, [J

    .line 286
    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setUidScanTime([JJ)V

    add-long/2addr v3, v6

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->setDeviceScanTime([JJ)V

    return-void
.end method

.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 7

    .line 148
    invoke-virtual {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 153
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->collectBluetoothActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v2

    .line 156
    invoke-virtual {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->collectBluetoothScanStats()V

    .line 158
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 160
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;

    if-eqz v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 161
    invoke-interface/range {v1 .. v6}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Observer;->onBluetoothPowerStatsRetrieved(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public final ensureInitialized()Z
    .locals 10

    .line 119
    iget-boolean v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getBluetoothStatsRetriever()Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 129
    new-instance v2, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 131
    new-instance v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 133
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 135
    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 136
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 137
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 139
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v3}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 140
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 142
    iput-boolean v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method

.method public final synthetic lambda$collectBluetoothScanStats$0(IJ)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 262
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector-IA;)V

    .line 265
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-wide p0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    add-long/2addr p0, p2

    iput-wide p0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 300
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;

    invoke-interface {p1}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    const-string v1, "android.hardware.bluetooth"

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 111
    :cond_0
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void

    .line 114
    :cond_1
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void
.end method
