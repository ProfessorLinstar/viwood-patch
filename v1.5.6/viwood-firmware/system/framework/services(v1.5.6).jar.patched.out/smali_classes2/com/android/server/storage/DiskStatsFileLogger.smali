.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# instance fields
.field public mDownloadsSize:J

.field public mPackageStats:Ljava/util/List;

.field public mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field public mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 79
    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 80
    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addAppsToJson(Lorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v0, p1

    .line 117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 120
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 125
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->filterOnlyPrimaryUser()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    move-wide v11, v9

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageStats;

    .line 128
    iget-wide v14, v13, Landroid/content/pm/PackageStats;->codeSize:J

    move/from16 v16, v5

    move-object/from16 p0, v6

    .line 129
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v17, v5

    .line 130
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v19, v5

    if-eqz v16, :cond_0

    .line 132
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v14, v5

    .line 133
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long v5, v17, v5

    move-wide/from16 v17, v5

    .line 134
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long v5, v19, v5

    move-wide/from16 v21, v14

    move-wide v14, v5

    move-wide/from16 v5, v17

    move-wide/from16 v17, v11

    move-wide/from16 v11, v21

    goto :goto_1

    :cond_0
    move-wide/from16 v5, v17

    move-wide/from16 v17, v11

    move-wide v11, v14

    move-wide/from16 v14, v19

    :goto_1
    add-long/2addr v7, v11

    add-long v17, v17, v5

    add-long/2addr v9, v14

    .line 140
    iget-object v13, v13, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    invoke-virtual {v2, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 142
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 143
    invoke-virtual {v4, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v6, p0

    move/from16 v5, v16

    move-wide/from16 v11, v17

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v11

    .line 145
    const-string/jumbo v5, "packageNames"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "appSizes"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "cacheSizes"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "appDataSizes"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "appSize"

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v1, "cacheSize"

    invoke-virtual {v0, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v1, "appDataSize"

    move-wide/from16 v7, v17

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public dumpToFile(Ljava/io/File;)V
    .locals 1

    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public final filterOnlyPrimaryUser()Landroid/util/ArrayMap;
    .locals 7

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageStats;

    .line 162
    iget v2, v1, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    if-eqz v2, :cond_1

    .line 168
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 169
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    .line 170
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 171
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 172
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 173
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/content/pm/PackageStats;

    invoke-direct {v3, v1}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getJsonRepresentation()Lorg/json/JSONObject;
    .locals 4

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    const-string/jumbo v1, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v1, "photosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "videosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string v1, "audioSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    const-string v1, "downloadsSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v1, "systemSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v1, "otherSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 109
    const-string v0, "DiskStatsLogger"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
