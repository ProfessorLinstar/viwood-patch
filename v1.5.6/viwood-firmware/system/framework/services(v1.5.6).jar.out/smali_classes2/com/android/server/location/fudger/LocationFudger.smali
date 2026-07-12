.class public Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field public static final OLD_WEIGHT:D

.field public static final S2_CELL_AVG_EDGE_PER_LEVEL:[F


# instance fields
.field public final mAccuracyM:F

.field public mCachedCoarseLocation:Landroid/location/Location;

.field public mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field public mCachedFineLocation:Landroid/location/Location;

.field public mCachedFineLocationResult:Landroid/location/LocationResult;

.field public final mClock:Ljava/time/Clock;

.field public mLatitudeOffsetM:D

.field public mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

.field public mLongitudeOffsetM:D

.field public mNextUpdateRealtimeMs:J

.field public final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    const/16 v0, 0xf

    .line 78
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x4610108f
        0x4590108f
        0x451010a4
        0x449010a4
        0x441010a4    # 576.26f
        0x439010a4    # 288.13f
        0x43100f5c    # 144.06f
        0x42900f5c    # 72.03f
        0x4210147b    # 36.02f
        0x41a651ec    # 20.79f
        0x41100000    # 9.0f
        0x40a1999a    # 5.05f
        0x40100000    # 2.25f
        0x3f90a3d7    # 1.13f
        0x3f11eb85    # 0.57f
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 112
    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 113
    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    const/high16 p2, 0x43480000    # 200.0f

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    return-void
.end method

.method public static metersToDegreesLatitude(D)D
    .locals 2

    .line 0
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static metersToDegreesLongitude(DD)D
    .locals 2

    .line 333
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const-wide p0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    return-wide p0

    :cond_0
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double/2addr p0, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static wrapLatitude(D)D
    .locals 3

    .line 0
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    move-wide p0, v0

    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method public static wrapLongitude(D)D
    .locals 4

    .line 0
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    sub-double/2addr p0, v0

    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    add-double/2addr p0, v0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 13

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    if-ne p1, v0, :cond_1

    :cond_0
    move-object v7, p0

    goto/16 :goto_3

    .line 175
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->updateOffsets()V

    .line 180
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 183
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    .line 184
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    .line 185
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v1

    .line 189
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v3

    .line 192
    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v5

    add-double v10, v3, v5

    .line 193
    iget-wide v3, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v3

    add-double v8, v1, v3

    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 200
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    iget v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    if-eqz v1, :cond_3

    .line 211
    invoke-virtual {v1}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/location/fudger/LocationFudgerCache;->getCoarseningLevel(DD)I

    move-result v12

    move-object v7, p0

    .line 214
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/location/fudger/LocationFudger;->snapToCenterOfS2Cell(DDI)[D

    move-result-object p0

    .line 215
    invoke-virtual {v7, v12}, Lcom/android/server/location/fudger/LocationFudger;->getS2CellApproximateEdge(I)F

    move-result v2

    goto :goto_0

    :cond_2
    move-object v7, p0

    .line 219
    invoke-virtual {v1}, Lcom/android/server/location/fudger/LocationFudgerCache;->onDefaultCoarseningLevelNotSet()V

    .line 221
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object v7, p0

    .line 225
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    .line 228
    aget-wide v3, p0, v1

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    const/4 v1, 0x1

    .line 229
    aget-wide v3, p0, v1

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 230
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Location;->setAccuracy(F)V

    .line 232
    monitor-enter v7

    .line 233
    :try_start_2
    iput-object p1, v7, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 234
    iput-object v0, v7, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 235
    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object v7, p0

    :goto_1
    move-object p0, v0

    .line 200
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v7, p0

    :goto_2
    move-object p0, v0

    goto :goto_4

    .line 173
    :goto_3
    :try_start_4
    iget-object p0, v7, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit v7

    return-object p0

    :catchall_4
    move-exception v0

    goto :goto_2

    .line 175
    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p0
.end method

.method public createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .locals 1

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    new-instance v0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object v0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    .line 154
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 155
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object p1

    .line 148
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getS2CellApproximateEdge(I)F
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 247
    :cond_0
    sget-object p0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    array-length v0, p0

    if-lt p1, v0, :cond_1

    .line 248
    array-length p0, p0

    add-int/lit8 p1, p0, -0x1

    .line 250
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    aget p0, p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final nextRandomOffset()D
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, p0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public resetOffsets()V
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 134
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 135
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    return-void
.end method

.method public setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public snapToCenterOfS2Cell(DDI)[D
    .locals 0

    .line 270
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide p0

    .line 271
    invoke-static {p0, p1, p5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide p0

    const/4 p2, 0x2

    .line 272
    new-array p2, p2, [D

    fill-array-data p2, :array_0

    .line 273
    invoke-static {p0, p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toLatLngDegrees(J[D)[D

    return-object p2

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final snapToGrid(DD)[D
    .locals 7

    const/4 v0, 0x2

    .line 260
    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 261
    iget v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v2

    div-double v5, p1, v2

    .line 262
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v2

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 263
    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v1, p0

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide p0

    div-double/2addr p3, p0

    .line 264
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide p0

    aput-wide p0, v0, v4

    return-object v0
.end method

.method public final declared-synchronized updateOffsets()V
    .locals 10

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 291
    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v6

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 296
    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 297
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
