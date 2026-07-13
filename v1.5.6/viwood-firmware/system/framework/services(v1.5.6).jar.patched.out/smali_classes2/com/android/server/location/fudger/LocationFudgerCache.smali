.class public Lcom/android/server/location/fudger/LocationFudgerCache;
.super Ljava/lang/Object;
.source "LocationFudgerCache.java"


# static fields
.field public static sTAG:Ljava/lang/String; = "LocationFudgerCache"


# instance fields
.field public final mCache:[J

.field public mCacheSize:I

.field public mDefaultCoarseningLevel:Ljava/lang/Integer;

.field public mLastQueryToLogDensityBasedLocsUsedMs:J

.field public final mLock:Ljava/lang/Object;

.field public final mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

.field public mPosInCache:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/location/fudger/LocationFudgerCache;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultCoarseningLevel(Lcom/android/server/location/fudger/LocationFudgerCache;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/location/fudger/LocationFudgerCache;->sTAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    const/16 v0, 0x14

    .line 55
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    .line 61
    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    const-wide/32 v0, -0x927c0

    .line 79
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    return-void
.end method


# virtual methods
.method public addToCache([J)V
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    array-length v1, p1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    iget v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    add-int/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    iget v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 194
    rem-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 196
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final asyncFetchDefaultCoarseningLevel()V
    .locals 1

    .line 204
    new-instance v0, Lcom/android/server/location/fudger/LocationFudgerCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudgerCache$1;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    .line 217
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    return-void
.end method

.method public getCoarseningLevel(DD)I
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/fudger/LocationFudgerCache;->readCacheForLatLng(DD)Ljava/lang/Long;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->getDefaultCoarseningLevel()I

    move-result v6

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/fudger/LocationFudgerCache;->refreshCache(DD)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    return v6

    :cond_1
    move-object v1, p0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result p0

    return p0
.end method

.method public final getDefaultCoarseningLevel()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 258
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 261
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

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

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logDensityBasedLocsUsed(JZZI)Z
    .locals 4

    .line 146
    iget-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    iput-wide p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    const/16 p0, 0x3eb

    .line 152
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDefaultCoarseningLevelNotSet()V
    .locals 7

    .line 93
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    return-void
.end method

.method public final readCacheForLatLng(DD)Ljava/lang/Long;
    .locals 9

    .line 165
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 166
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide v3, v2, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/location/geometry/S2CellIdUtils;->containsLatLngDegrees(JDD)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v5

    move-wide p3, v7

    goto :goto_0

    .line 171
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final refreshCache(DD)V
    .locals 9

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    new-instance v8, Lcom/android/server/location/fudger/LocationFudgerCache$2;

    invoke-direct {v8, p0, v0, v1}, Lcom/android/server/location/fudger/LocationFudgerCache$2;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;J)V

    .line 246
    iget-object v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    const/16 v7, 0x13

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V

    return-void
.end method
