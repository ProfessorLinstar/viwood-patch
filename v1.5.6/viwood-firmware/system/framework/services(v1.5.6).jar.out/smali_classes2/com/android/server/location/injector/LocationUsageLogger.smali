.class public Lcom/android/server/location/injector/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# instance fields
.field public mApiUsageLogHourlyCount:I

.field public mLastApiUsageLogHour:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method public static bucketizeDistance(F)I
    .locals 2

    .line 0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static bucketizeExpireIn(J)I
    .locals 2

    .line 0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0
.end method

.method public static bucketizeInterval(J)I
    .locals 2

    .line 0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x6

    return p0
.end method

.method public static bucketizeProvider(Ljava/lang/String;)I
    .locals 1

    .line 140
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 142
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 144
    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 146
    :cond_2
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static bucketizeRadius(F)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const v0, 0x461c4000    # 10000.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x6

    return p0
.end method

.method public static categorizeActivityImportance(Z)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public static getCallbackType(IZZ)I
    .locals 1

    .line 0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized hitApiUsageLogCap()Z
    .locals 4

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 242
    iget-wide v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 243
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 244
    iput v3, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 247
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x3c

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    move v3, v1

    .line 249
    :cond_1
    monitor-exit p0

    return v3

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized logEmergencyStateChanged(Z)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x279

    .line 136
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public logLocationApiUsage(IILjava/lang/String;)V
    .locals 16

    .line 100
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    move/from16 v3, p2

    .line 113
    invoke-static {v3, v0, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v1, 0xd2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v2, p1

    .line 104
    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 121
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V
    .locals 20

    .line 56
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p6, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p9, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v2, :cond_3

    move v9, v1

    goto :goto_2

    .line 67
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    :goto_2
    if-eqz v2, :cond_4

    move v10, v1

    goto :goto_3

    .line 70
    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getQuality()I

    move-result v4

    move v10, v4

    :goto_3
    if-eqz v2, :cond_5

    move v11, v1

    goto :goto_4

    .line 73
    :cond_5
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeInterval(J)I

    move-result v4

    move v11, v4

    :goto_4
    if-eqz v2, :cond_6

    move v12, v1

    goto :goto_5

    .line 77
    :cond_6
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v4

    .line 76
    invoke-static {v4}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeDistance(F)I

    move-result v4

    move v12, v4

    :goto_5
    if-eqz v2, :cond_7

    const-wide/16 v4, 0x0

    :goto_6
    move-wide v13, v4

    goto :goto_7

    .line 78
    :cond_7
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v4

    int-to-long v4, v4

    goto :goto_6

    :goto_7
    move/from16 v6, p1

    if-nez v2, :cond_9

    if-ne v6, v0, :cond_8

    goto :goto_8

    .line 82
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeExpireIn(J)I

    move-result v0

    move v15, v0

    move/from16 v7, p2

    move/from16 v2, p8

    move/from16 v0, p7

    goto :goto_9

    :cond_9
    :goto_8
    move v15, v1

    move/from16 v7, p2

    move/from16 v0, p7

    move/from16 v2, p8

    .line 83
    :goto_9
    invoke-static {v7, v0, v2}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v16

    if-eqz v3, :cond_a

    :goto_a
    move/from16 v17, v1

    goto :goto_b

    .line 86
    :cond_a
    invoke-virtual/range {p9 .. p9}, Landroid/location/Geofence;->getRadius()F

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeRadius(F)I

    move-result v1

    goto :goto_a

    .line 87
    :goto_b
    invoke-static/range {p10 .. p10}, Lcom/android/server/location/injector/LocationUsageLogger;->categorizeActivityImportance(Z)I

    move-result v18

    const/16 v5, 0xd2

    move-object/from16 v8, p3

    move-object/from16 v19, p4

    .line 63
    invoke-static/range {v5 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 91
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public declared-synchronized logLocationEnabledStateChanged(Z)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x244

    .line 129
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
