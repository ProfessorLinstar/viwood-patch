.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# static fields
.field public static final HARD_CAP_TAG:Ljava/lang/String; = "*overflow hard cap*"

.field public static final HARD_CAP_UID:I = -0x1

.field public static final MAX_WAKELOCK_DIMENSIONS:I = 0x3e8

.field public static final OVERFLOW_LEVEL:I = 0x1

.field public static final OVERFLOW_TAG:Ljava/lang/String; = "*overflow*"

.field public static final SUMMARY_THRESHOLD:I = 0x1f4


# instance fields
.field public mIsInitialized:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOpenWakeLocks:Ljava/util/Map;

.field public final mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

.field public final mWakeLockStats:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$AtV_1LGVyaohwoFf9kkapV7I5IY(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
    .locals 0

    .line 146
    new-instance p2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;-><init>(J)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$Fds4fnTXtO1xF-OgWWVuZ3qDVKs(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 1

    .line 273
    new-instance p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$_eI9M4itj9AElL0QLHvCcZ6S53I(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 1

    .line 271
    new-instance p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$fgzsMdzA2m8ygC8lBUBJcEA8eis(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 1

    .line 255
    new-instance p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$iC66w-mkFRw3OjMek3zncId5-1U(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
    .locals 1

    .line 187
    new-instance p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    .line 285
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public inHardCap()Z
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inOverflow()Z
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4

    .line 291
    iget-boolean v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 295
    :cond_0
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    .line 296
    const-string v0, "BatteryStatsPulledMetrics"

    if-nez p1, :cond_1

    .line 297
    const-string p0, "Error retrieving StatsManager. Cannot initialize BatteryStatsPulledMetrics."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_1
    const-string v1, "Registering callback with StatsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mStatsPullCallbackHandler:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;

    const/16 v2, 0x27f6

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mIsInitialized:Z

    return-void
.end method

.method public noteStartWakeLock(ILjava/lang/String;IJ)V
    .locals 1

    .line 142
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;-><init>(ILjava/lang/String;I)V

    .line 144
    iget-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 145
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    new-instance p3, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;

    invoke-direct {p3, p4, p5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;-><init>(J)V

    .line 146
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 147
    iget p3, p2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 148
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteStopWakeLock(ILjava/lang/String;IJ)V
    .locals 3

    .line 166
    new-instance v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;-><init>(ILjava/lang/String;I)V

    .line 168
    iget-object p3, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    if-nez v1, :cond_0

    .line 171
    const-string p0, "BatteryStatsPulledMetrics"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "WakeLock not found when stopping: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 175
    :cond_0
    iget p1, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 176
    iget-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-wide p1, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long/2addr p4, p1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inOverflow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setOverflow()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inHardCap()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setHardCap()V

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance p2, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 188
    iget-wide v1, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long/2addr v1, p4

    iput-wide v1, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    .line 189
    iget-wide p4, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p4, v1

    iput-wide p4, p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    .line 190
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sub-int/2addr p1, p2

    .line 192
    iput p1, v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 193
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pullFrameworkWakelockInfoAtoms()Ljava/util/List;
    .locals 4

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Ljava/util/List;)V

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V

    return-object v0
.end method

.method public pullFrameworkWakelockInfoAtoms(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;)V
    .locals 19

    move-object/from16 v0, p0

    .line 233
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 238
    iget-object v3, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 239
    :try_start_0
    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inOverflow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 245
    iget-object v6, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    iget-object v6, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    .line 248
    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setOverflow()V

    .line 249
    invoke-virtual {v0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->inHardCap()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 250
    invoke-virtual {v5}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->setHardCap()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 252
    :cond_1
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda0;-><init>()V

    .line 255
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 256
    iget-wide v8, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    iget-wide v10, v6, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v10, p1, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    .line 257
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_2
    iget-object v4, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    .line 266
    iget-object v5, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mOpenWakeLocks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    if-eqz v5, :cond_4

    .line 268
    iget-wide v5, v5, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    sub-long v5, p1, v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, 0x0

    .line 271
    :goto_3
    iget-object v7, v0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->mWakeLockStats:Ljava/util/Map;

    new-instance v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 272
    new-instance v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda2;-><init>()V

    .line 273
    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    .line 275
    iget-wide v9, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long/2addr v5, v9

    iget-wide v9, v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    add-long v15, v5, v9

    .line 276
    iget-wide v5, v7, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    iget-wide v7, v8, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    add-long v17, v5, v7

    .line 277
    invoke-virtual {v4}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getUid()I

    move-result v12

    invoke-virtual {v4}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;->getPowerManagerWakeLockLevel()I

    move-result v14

    move-object/from16 v11, p3

    invoke-interface/range {v11 .. v18}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;->logResult(ILjava/lang/String;IJJ)V

    goto :goto_2

    .line 280
    :cond_5
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
