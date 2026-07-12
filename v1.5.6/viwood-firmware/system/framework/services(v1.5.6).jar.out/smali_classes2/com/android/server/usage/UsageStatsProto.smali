.class public abstract Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "UsageStatsProto.java"


# static fields
.field public static TAG:Ljava/lang/String; = "UsageStatsProto"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 6

    .line 183
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_0
    const-wide v0, 0x10900000001L

    .line 188
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    .line 194
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    .line 203
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const-wide v0, 0x20b00000003L

    .line 210
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 212
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V

    .line 213
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 217
    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    const-string p1, ""

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    .locals 9

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 253
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const-wide v1, 0x10b00000001L

    .line 255
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 259
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v3

    goto :goto_0

    .line 263
    :cond_0
    new-instance v3, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v3}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 266
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-wide v4, 0x10800000005L

    .line 289
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    goto :goto_0

    :cond_2
    const-wide v5, 0x10500000004L

    .line 285
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_0

    :cond_3
    const-wide v5, 0x10300000003L

    .line 281
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_0

    .line 277
    :cond_4
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_0

    .line 269
    :cond_5
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 270
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 271
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 272
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 273
    iget v3, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v3, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v3, v5

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 293
    iget-object v0, v3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 295
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 164
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x10300000002L

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-wide v2, 0x10500000001L

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 177
    :goto_1
    sget-object p3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read event tracker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x10500000003L

    .line 235
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10900000001L

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 242
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 0

    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 304
    invoke-virtual {p3, p0, p4}, Lcom/android/server/usage/IntervalStats;->buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p4

    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 306
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 309
    iget-object p0, p3, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, p4}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 307
    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    const-string/jumbo p1, "no package field present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 9

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000002L

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const-wide v3, 0x10900000001L

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_1
    new-instance v2, Landroid/app/usage/UsageStats;

    invoke-direct {v2}, Landroid/app/usage/UsageStats;-><init>()V

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x1030000000cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_0

    :pswitch_1
    const-wide v5, 0x1030000000bL

    .line 147
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_0

    .line 143
    :pswitch_2
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x1030000000aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_0

    :pswitch_3
    const-wide v5, 0x10300000009L

    .line 138
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_0

    .line 134
    :pswitch_4
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000008L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_5
    const-wide v5, 0x20b00000007L

    .line 124
    :try_start_0
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 126
    invoke-static {p0, v2}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 127
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 129
    sget-object v6, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read chooser counts for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_6
    const-wide v5, 0x10500000006L

    .line 119
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_0

    :pswitch_7
    const-wide v5, 0x10500000005L

    .line 116
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    goto/16 :goto_0

    :pswitch_8
    const-wide v5, 0x10300000004L

    .line 111
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_0

    .line 107
    :pswitch_9
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_0

    .line 98
    :pswitch_a
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 97
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 99
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 100
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 101
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 102
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    :goto_1
    move-object v2, v5

    goto/16 :goto_0

    .line 88
    :pswitch_b
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 89
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 90
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 91
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 92
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 5

    .line 509
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 512
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 513
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    .line 514
    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 515
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 518
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x20b00000016L

    .line 571
    :try_start_0
    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 573
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x20b00000015L

    .line 564
    :try_start_1
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 566
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some configuration stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x20b00000014L

    .line 557
    :try_start_2
    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 559
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some usage stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10b0000000dL

    .line 544
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x10b0000000cL

    .line 540
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x10b0000000bL

    .line 536
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10b0000000aL

    .line 532
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_0

    :cond_0
    const-wide v1, 0x10500000004L

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_0

    :cond_1
    const-wide v1, 0x10500000003L

    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_0

    .line 549
    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProto;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    .line 550
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    .line 552
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read string pool from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 520
    :cond_3
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_0

    .line 577
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/usage/IntervalStats;->upgradeIfNeeded()V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 5

    const-wide v0, 0x10b00000002L

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x20900000002L

    .line 55
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-object v4
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 9

    .line 591
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 592
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 593
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v2

    const-wide v4, 0x10300000001L

    .line 592
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000003L

    .line 594
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    .line 595
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 598
    :try_start_0
    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsProto;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 600
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write string pool to proto."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :goto_0
    :try_start_1
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000aL

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 606
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000bL

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 608
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000cL

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 610
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v2, 0x10b0000000dL

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 613
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write some interval stats trackers to proto."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :goto_1
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v7, 0x0

    move v2, v7

    :goto_2
    if-ge v2, p0, :cond_0

    .line 619
    :try_start_2
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 620
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    const-wide v3, 0x20b00000014L

    .line 619
    invoke-static {v1, v3, v4, p1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 622
    sget-object v3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v4, "Unable to write some usage stats to proto."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 625
    :cond_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v8, v7

    :goto_4
    if-ge v8, p0, :cond_1

    .line 627
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    .line 629
    :try_start_3
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 630
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/usage/ConfigurationStats;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    const-wide v2, 0x20b00000015L

    move-object v4, p1

    .line 629
    :try_start_4
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProto;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_5
    move-object p1, v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v4, p1

    goto :goto_5

    .line 632
    :goto_6
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write some configuration stats to proto."

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object p1, v4

    goto :goto_4

    :cond_1
    move-object v4, p1

    .line 635
    iget-object p0, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_8
    if-ge v7, p0, :cond_2

    .line 638
    :try_start_5
    iget-object p1, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p1

    const-wide v2, 0x20b00000016L

    invoke-static {v1, v2, v3, v4, p1}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object p1, v0

    .line 640
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write some events to proto."

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 644
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 375
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 381
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 383
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide v4, 0x20b00000007L

    .line 386
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10900000001L

    .line 387
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 388
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V

    .line 389
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .locals 10

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 412
    iget-object v0, p4, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 413
    iget-wide v6, p4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10300000003L

    .line 416
    iget-wide v4, p4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    .line 418
    iget p0, p4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p3, 0x10800000005L

    .line 419
    invoke-virtual {v3, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 420
    invoke-virtual {v3, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 2

    .line 366
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    .line 367
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 368
    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 369
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V
    .locals 8

    .line 395
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    const-wide v4, 0x20b00000003L

    .line 400
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10900000001L

    .line 401
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000003L

    .line 402
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 403
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 10

    .line 425
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 426
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-wide v1, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 428
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x10900000001L

    .line 431
    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 433
    :goto_0
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 434
    iget-object v1, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const-wide v1, 0x10500000004L

    add-int/lit8 v0, v0, 0x1

    .line 436
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    :cond_1
    const-wide v0, 0x10900000003L

    .line 439
    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 442
    :cond_2
    :goto_1
    iget-wide v6, p4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v4, 0x10300000005L

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10500000006L

    .line 444
    iget p0, p4, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000007L

    .line 445
    iget p0, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000eL

    .line 446
    iget p0, p4, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 447
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 448
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    const-wide v0, 0x1050000000fL

    add-int/lit8 p0, p0, 0x1

    .line 450
    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 454
    :cond_3
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 455
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4

    const-wide v0, 0x10500000010L

    add-int/lit8 p0, p0, 0x1

    .line 457
    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 461
    :cond_4
    iget p0, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_8

    const/16 v0, 0xb

    if-eq p0, v0, :cond_7

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    goto :goto_2

    .line 478
    :cond_5
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p0, :cond_b

    .line 479
    iget-object p3, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_6

    const-wide p3, 0x1050000000dL

    add-int/lit8 p0, p0, 0x1

    .line 482
    invoke-virtual {v3, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_6
    const-wide v0, 0x1090000000cL

    .line 486
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    .line 473
    :cond_7
    iget p0, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p0, :cond_b

    const-wide p3, 0x1050000000bL

    .line 474
    invoke-virtual {v3, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    .line 492
    :cond_8
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-eqz p0, :cond_b

    .line 493
    iget-object p3, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_b

    const-wide p3, 0x10500000011L

    add-int/lit8 p0, p0, 0x1

    .line 495
    invoke-virtual {v3, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    .line 468
    :cond_9
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-wide p3, 0x10900000009L

    .line 469
    invoke-virtual {v3, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_2

    .line 463
    :cond_a
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_b

    const-wide p3, 0x10b00000008L

    .line 464
    invoke-virtual {p0, v3, p3, p4}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 499
    :cond_b
    :goto_2
    invoke-virtual {v3, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 7

    const-wide v0, 0x10b00000002L

    .line 314
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 315
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const-wide v3, 0x10500000001L

    .line 316
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 318
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x20900000002L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 10

    .line 326
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 328
    iget-object v2, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v3, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    const-wide v3, 0x10500000002L

    .line 330
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x10900000001L

    .line 333
    iget-object v4, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 335
    :goto_0
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v6, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x10300000003L

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10300000004L

    .line 338
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000005L

    .line 340
    iget v4, p4, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 342
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v6, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x10300000008L

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10300000009L

    .line 345
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 347
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v6, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x1030000000aL

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x1030000000bL

    .line 350
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 352
    iget-wide v4, p4, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v6, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v2, 0x1030000000cL

    invoke-static/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10500000006L

    .line 355
    iget v0, p4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 357
    :try_start_0
    invoke-static {p0, p4}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 359
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write chooser counts for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :goto_1
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
