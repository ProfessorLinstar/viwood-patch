.class public abstract Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field public static final ONE_HOUR_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method public static getOffsetTimestamp(JJ)J
    .locals 0

    .line 0
    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_0

    const-wide/16 p2, 0x1

    add-long/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 7

    const-wide v0, 0x10500000001L

    .line 137
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 140
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_1

    .line 142
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 143
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 150
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide v5, 0x20b00000002L

    .line 158
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 159
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 160
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 155
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    .line 195
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 196
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    const-wide v2, 0x10b00000001L

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const-wide v4, 0x10800000005L

    .line 227
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_2
    const-wide v6, 0x10500000004L

    .line 223
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_0

    :cond_3
    const-wide v6, 0x10300000003L

    .line 219
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_0

    .line 215
    :cond_4
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v4

    .line 209
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 210
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 211
    iget v1, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v1, v4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v1, v4

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 232
    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_7
    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 114
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

    .line 120
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-wide v2, 0x10500000001L

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 129
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read event tracker "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 173
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x10500000002L

    .line 180
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10500000001L

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-eq v2, v0, :cond_3

    .line 185
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    return-void
.end method

.method public static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .locals 5

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    move v2, v1

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v1, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x20900000002L

    .line 618
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide v2, 0x10500000001L

    .line 615
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-eq v2, v1, :cond_3

    .line 622
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .locals 4

    .line 241
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 243
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-wide v1, 0x10b0000000eL

    .line 291
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 293
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUserInteractionEventExtras(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    move-result-object v3

    iput-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 294
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 296
    const-string v2, "UsageStatsProtoV2"

    const-string v3, "Unable to read some user interaction extras from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1050000000dL

    .line 286
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x1050000000cL

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x1050000000bL

    .line 278
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x1050000000aL

    .line 275
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10500000009L

    .line 271
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto :goto_0

    :pswitch_7
    const-wide v1, 0x10500000008L

    .line 268
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_0

    :pswitch_8
    const-wide v1, 0x10500000007L

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    goto/16 :goto_0

    .line 260
    :pswitch_9
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 261
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_0

    :pswitch_a
    const-wide v1, 0x10500000005L

    .line 257
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x10500000004L

    .line 254
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x10300000003L

    .line 251
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_0

    :pswitch_d
    const-wide v1, 0x10500000002L

    .line 248
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    goto/16 :goto_0

    :pswitch_e
    const-wide v1, 0x10500000001L

    .line 245
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    goto/16 :goto_0

    .line 300
    :pswitch_f
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method public static parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .locals 5

    .line 853
    const-string v0, ""

    const-wide/16 v1, 0x0

    .line 855
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x10300000002L

    .line 861
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide v3, 0x10900000001L

    .line 857
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 864
    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .locals 4

    .line 685
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 687
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-wide v1, 0x10c0000000eL

    .line 727
    invoke-static {p0, v1, v2}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEventExtras(Landroid/util/proto/ProtoInputStream;J)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1090000000cL

    .line 724
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x1090000000bL

    .line 721
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x1050000000aL

    .line 718
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x10900000009L

    .line 714
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10500000008L

    .line 711
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_0

    :pswitch_7
    const-wide v1, 0x10900000007L

    .line 708
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_0

    .line 704
    :pswitch_8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 705
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_0

    :pswitch_9
    const-wide v1, 0x10500000005L

    .line 701
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto :goto_0

    :pswitch_a
    const-wide v1, 0x10500000004L

    .line 698
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_0

    :pswitch_b
    const-wide v1, 0x10300000003L

    .line 695
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_0

    :pswitch_c
    const-wide v1, 0x10900000002L

    .line 692
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    const-wide v1, 0x10900000001L

    .line 689
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 731
    :pswitch_e
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    const-string v2, ""

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 743
    :cond_0
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 744
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_1

    .line 738
    :cond_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 739
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_1

    .line 733
    :cond_2
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_3

    .line 734
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 748
    :cond_3
    :goto_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parsePendingEventExtras(Landroid/util/proto/ProtoInputStream;J)Landroid/os/PersistableBundle;
    .locals 1

    .line 955
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .locals 5

    .line 54
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v1, 0x1030000000cL

    .line 100
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_0

    :pswitch_1
    const-wide v1, 0x1030000000bL

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_0

    :pswitch_2
    const-wide v1, 0x1030000000aL

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10300000009L

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_4
    const-wide v1, 0x10300000008L

    .line 84
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_0

    :pswitch_5
    const-wide v1, 0x20b00000007L

    .line 76
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 77
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 78
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-wide v1, 0x10500000006L

    .line 71
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_0

    :cond_0
    const-wide v1, 0x10300000004L

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_0

    :cond_1
    const-wide v1, 0x10300000003L

    .line 63
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_0

    :cond_2
    const-wide v3, 0x10500000001L

    .line 59
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    goto/16 :goto_0

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseUserInteractionEventExtras(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;
    .locals 5

    .line 922
    new-instance v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    .line 925
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v3, 0x10500000002L

    .line 931
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    goto :goto_0

    :cond_1
    const-wide v3, 0x10500000001L

    .line 927
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 7

    .line 463
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 465
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v2, "UsageStatsProtoV2"

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v3, 0x20b00000016L

    .line 520
    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 522
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 523
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_0

    .line 525
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 528
    const-string v1, "Unable to read some events from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    const-wide v3, 0x20b00000015L

    .line 507
    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 509
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 510
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 512
    const-string v1, "Unable to read some configuration stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x20b00000014L

    .line 494
    :try_start_2
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 496
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object p0

    .line 497
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 498
    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v3, v1, :cond_0

    .line 499
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 502
    const-string v1, "Unable to read some usage stats from proto."

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    const-wide v1, 0x10b0000000dL

    .line 489
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_4
    const-wide v1, 0x10b0000000cL

    .line 485
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_5
    const-wide v1, 0x10b0000000bL

    .line 481
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :pswitch_6
    const-wide v1, 0x10b0000000aL

    .line 477
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_0

    :cond_2
    const-wide v1, 0x10500000003L

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_0

    :cond_3
    const-wide v1, 0x10500000002L

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_0

    .line 467
    :cond_4
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_0

    .line 533
    :cond_5
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_6

    .line 535
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 536
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 537
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-void

    nop

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

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 5

    .line 877
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 879
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x18

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x20b00000018L

    .line 882
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 883
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object p0

    .line 884
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 885
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 886
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 889
    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some package usage from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 3

    .line 637
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 639
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x20b00000002L

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 645
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 646
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_1
    const-wide v1, 0x10500000001L

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .locals 3

    .line 761
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 763
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x17

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x20b00000017L

    .line 766
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 767
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 768
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_0

    .line 770
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 773
    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some pending events from proto."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    .line 552
    const-string v1, "UsageStatsProtoV2"

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 553
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 554
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v3

    const-wide v5, 0x10300000001L

    .line 553
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000002L

    .line 555
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 556
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 559
    :try_start_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000aL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 561
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000bL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 563
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000cL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 565
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v6, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    const-wide v3, 0x10b0000000dL

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 568
    const-string v0, "Unable to write some interval stats trackers to proto."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    :goto_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, p0, :cond_0

    const-wide v5, 0x20b00000014L

    .line 574
    :try_start_1
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 575
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-static {v2, v7, v8, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 576
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 578
    const-string v5, "Unable to write some usage stats to proto."

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 581
    :cond_0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v4, v3

    :goto_3
    if-ge v4, p0, :cond_1

    .line 583
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    const-wide v5, 0x20b00000015L

    .line 585
    :try_start_2
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 586
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v9, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/ConfigurationStats;

    invoke-static {v2, v7, v8, v9, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 587
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 589
    const-string v5, "Unable to write some configuration stats to proto."

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 592
    :cond_1
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_5
    if-ge v3, p0, :cond_2

    const-wide v4, 0x20b00000016L

    .line 595
    :try_start_3
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 596
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, v3}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 597
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 599
    const-string v4, "Unable to write some events to proto."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 603
    :cond_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 8

    if-eqz p1, :cond_3

    .line 355
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 360
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 361
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide v4, 0x20b00000007L

    .line 365
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 366
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 367
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 368
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .locals 10

    .line 392
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10300000002L

    .line 394
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide p0, 0x10300000003L

    .line 396
    iget-wide v0, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {v3, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p0, 0x10500000004L

    .line 398
    iget p2, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {v3, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x10800000005L

    .line 399
    invoke-virtual {v3, p0, p1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 2

    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    .line 348
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 349
    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 350
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .locals 8

    .line 374
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 376
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 377
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide v4, 0x20b00000002L

    .line 381
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 382
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 384
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 385
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .locals 11

    .line 404
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 405
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide v2, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 406
    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    const-wide v5, 0x10300000003L

    .line 408
    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide p0, 0x10500000004L

    .line 409
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x10500000005L

    .line 410
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p0, 0x1050000000aL

    .line 411
    iget p2, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 412
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq p0, v1, :cond_1

    const-wide p1, 0x1050000000bL

    add-int/lit8 p0, p0, 0x1

    .line 413
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 416
    :cond_1
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq p0, v1, :cond_2

    const-wide p1, 0x1050000000cL

    add-int/lit8 p0, p0, 0x1

    .line 417
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 419
    :cond_2
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_8

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_7

    const/4 p1, 0x7

    if-eq p0, p1, :cond_6

    const/16 p1, 0x8

    if-eq p0, p1, :cond_5

    const/16 p1, 0xb

    if-eq p0, p1, :cond_4

    const/16 p1, 0xc

    if-eq p0, p1, :cond_3

    goto :goto_0

    .line 441
    :cond_3
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq p0, v1, :cond_9

    const-wide p1, 0x10500000009L

    add-int/lit8 p0, p0, 0x1

    .line 442
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 426
    :cond_4
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p0, :cond_9

    const-wide p1, 0x10500000008L

    .line 427
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 431
    :cond_5
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq p0, v1, :cond_9

    const-wide p1, 0x10500000007L

    add-int/lit8 p0, p0, 0x1

    .line 432
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 447
    :cond_6
    iget-object p0, p3, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz p0, :cond_9

    const-wide p1, 0x10b0000000eL

    .line 448
    invoke-static {v4, p1, p2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUserInteractionEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;)V

    return-void

    .line 436
    :cond_7
    iget p0, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq p0, v1, :cond_9

    const-wide p1, 0x1050000000dL

    add-int/lit8 p0, p0, 0x1

    .line 437
    invoke-virtual {v4, p1, p2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 421
    :cond_8
    iget-object p0, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_9

    const-wide p1, 0x10b00000006L

    .line 422
    invoke-virtual {p0, v4, p1, p2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 8

    .line 906
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 908
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 909
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 911
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x20b00000018L

    .line 912
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 913
    aget-object v4, p0, v1

    .line 914
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    .line 913
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 915
    aget-object v4, p0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x10300000002L

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 916
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 13

    .line 662
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 663
    iget p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 665
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_1

    const-wide v5, 0x20b00000002L

    .line 667
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 668
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 669
    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 671
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 672
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    .line 674
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x20900000002L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 676
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 2

    .line 309
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 312
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_0
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    .line 784
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 785
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide v1, 0x10900000002L

    .line 786
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v0, 0x10300000003L

    .line 788
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    .line 789
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 790
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000aL

    .line 791
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide v1, 0x1090000000bL

    .line 793
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 795
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide v1, 0x1090000000cL

    .line 796
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 798
    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 815
    :cond_3
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-wide v0, 0x10900000009L

    .line 816
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    .line 805
    :cond_4
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_8

    const-wide v0, 0x10500000008L

    .line 806
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 810
    :cond_5
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-wide v0, 0x10900000007L

    .line 811
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void

    .line 821
    :cond_6
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    if-eqz v0, :cond_8

    const-wide v0, 0x10c0000000eL

    .line 822
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/os/PersistableBundle;)V

    return-void

    .line 800
    :cond_7
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_8

    const-wide v0, 0x10b00000006L

    .line 801
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_8
    :goto_0
    return-void
.end method

.method public static writePendingEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/os/PersistableBundle;)V
    .locals 1

    .line 963
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 964
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 965
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .locals 5

    .line 836
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 837
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-wide v2, 0x20b00000017L

    .line 840
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 841
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 842
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 844
    const-string v3, "UsageStatsProtoV2"

    const-string v4, "Unable to write some pending events to proto."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .locals 7

    .line 324
    iget v1, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v1, v1, 0x1

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000003L

    .line 325
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000004L

    .line 327
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000008L

    .line 328
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10300000009L

    .line 330
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    .line 332
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x1030000000bL

    .line 334
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000cL

    .line 335
    iget-wide v3, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v1, 0x10500000006L

    .line 337
    iget v3, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 339
    :try_start_0
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeUserInteractionEventExtras(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;)V
    .locals 3

    .line 942
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 943
    iget v0, p3, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 945
    iget p3, p3, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    add-int/lit8 p3, p3, 0x1

    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 947
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
