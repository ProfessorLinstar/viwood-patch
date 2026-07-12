.class public Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
.super Ljava/lang/Object;
.source "AggregatedMobileDataStatsPuller.java"


# instance fields
.field public mLastMobileUidStats:Landroid/net/NetworkStats;

.field public final mLock:Ljava/lang/Object;

.field public final mMobileDataStatsHandler:Landroid/os/Handler;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field public final mUidPreviousState:Landroid/util/SparseIntArray;

.field public final mUidStats:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$TUrXXS0k7WcZnRrfjsngjNomQ8w(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->lambda$noteUidProcessState$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4qGpDfNygeaR2N48fNhkmgoaeo(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/NetworkStatsManager;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 149
    new-instance v0, Lcom/android/server/selinux/RateLimiter;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 151
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    .line 152
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    .line 154
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobileDataStatsHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static isEmpty(Landroid/net/NetworkStats;)Z
    .locals 5

    .line 307
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 308
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 199
    new-instance v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-direct {v1, p1, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;-><init>(II)V

    .line 200
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    return-object p0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v0, 0xbb8

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 204
    new-instance p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-direct {p1, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller-IA;)V

    .line 205
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v2
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteUidProcessState$1(II)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->noteUidProcessStateImpl(II)V

    return-void
.end method

.method public noteUidProcessState(IIJJ)V
    .locals 0

    .line 173
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    invoke-virtual {p3}, Lcom/android/server/selinux/RateLimiter;->tryAcquire()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 174
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mMobileDataStatsHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 179
    :cond_0
    iget-object p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteUidProcessStateImpl(II)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V

    goto :goto_0

    .line 226
    :cond_0
    const-string v0, "AggregatedMobileDataStatsPuller"

    const-string/jumbo v1, "noteUidProcessStateLocked() can not get mNetworkStatsManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pullDataBytesTransfer(Ljava/util/List;)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransferLocked(Ljava/util/List;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pullDataBytesTransferLocked(Ljava/util/List;)I
    .locals 14

    .line 286
    iget-object p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-virtual {v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->getUid()I

    move-result v4

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    invoke-virtual {v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    .line 293
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getRxBytes()J

    move-result-wide v6

    .line 294
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getRxPackets()J

    move-result-wide v8

    .line 295
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getTxBytes()J

    move-result-wide v10

    .line 296
    invoke-virtual {v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->getTxPackets()J

    move-result-wide v12

    const/16 v3, 0x27dc

    .line 289
    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V
    .locals 1

    .line 238
    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    invoke-virtual {p1, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 247
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLastMobileUidStats:Landroid/net/NetworkStats;

    .line 249
    invoke-static {v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->isEmpty(Landroid/net/NetworkStats;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStatsDelta(Landroid/net/NetworkStats;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateNetworkStatsDelta(Landroid/net/NetworkStats;)V
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 265
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 266
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->getUidStatsForPreviousStateLocked(I)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addTxBytes(J)V

    .line 269
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addRxBytes(J)V

    .line 270
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addTxPackets(J)V

    .line 271
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$MobileDataStats;->addRxPackets(J)V

    goto :goto_0

    .line 275
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
