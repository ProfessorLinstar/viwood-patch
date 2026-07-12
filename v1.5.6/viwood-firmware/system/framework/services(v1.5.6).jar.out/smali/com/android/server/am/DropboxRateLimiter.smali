.class public Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;

.field public mLastMapCleanUp:J

.field public mRateLimitAllowedEntries:I

.field public mRateLimitBufferDuration:J

.field public mRateLimitBufferExpiryFactor:J

.field public mStrictRateLimitBufferDuration:J

.field public mStrictRatelimitAllowedEntries:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRateLimitAllowedEntries(Lcom/android/server/am/DropboxRateLimiter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateLimitBufferDuration(Lcom/android/server/am/DropboxRateLimiter;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateLimitBufferExpiryFactor(Lcom/android/server/am/DropboxRateLimiter;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrictRateLimitBufferDuration(Lcom/android/server/am/DropboxRateLimiter;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrictRatelimitAllowedEntries(Lcom/android/server/am/DropboxRateLimiter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>(Lcom/android/server/am/DropboxRateLimiter-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 66
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    const-wide/32 v0, 0x927c0

    .line 68
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    const-wide/16 v0, 0x3

    .line 69
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    const/4 p1, 0x6

    .line 70
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    const-wide/32 v0, 0x124f80

    .line 72
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    return-void
.end method


# virtual methods
.method public errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 4

    .line 77
    const-string v0, "DropboxRateLimiter__rate_limit_buffer_duration"

    const-wide/32 v1, 0x927c0

    const-string v3, "dropbox"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    .line 81
    const-string v0, "DropboxRateLimiter__rate_limit_buffer_expiry_factor"

    const-wide/16 v1, 0x3

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    .line 85
    const-string v0, "DropboxRateLimiter__rate_limit_allowed_entries"

    const/4 v1, 0x6

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    .line 89
    const-string v0, "DropboxRateLimiter__strict_rate_limit_allowed_entries"

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    .line 93
    const-string v0, "DropboxRateLimiter__strict_rate_limit_buffer_duration"

    const-wide/32 v1, 0x124f80

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    return-void
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .locals 6

    .line 158
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    iget-wide v4, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->hasExpired(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 167
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result v1

    int-to-long v1, v1

    .line 165
    const-string/jumbo v3, "stability_errors.value_dropbox_buffer_expired_count"

    invoke-static {v3, v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 168
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    :cond_2
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    return-void
.end method

.method public final recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 181
    const-string p0, "DropboxRateLimiter"

    const-string v0, "Rate limiter reset."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    invoke-interface {v0}, Lcom/android/server/am/DropboxRateLimiter$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 111
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    .line 113
    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;JI)V

    .line 116
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide p1

    sub-long p1, v0, p1

    .line 121
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result v6

    .line 123
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setStartTime(J)V

    .line 124
    invoke-virtual {v3, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setCount(I)V

    if-lez v6, :cond_1

    .line 130
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v0

    const-wide/16 v7, 0x2

    mul-long/2addr v0, v7

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    .line 131
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementSuccessiveRateLimitCycles()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setSuccessiveRateLimitCycles(I)V

    .line 136
    :goto_0
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 139
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementCount()V

    .line 140
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p1

    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result p2

    if-le p1, p2, :cond_3

    .line 141
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p2

    invoke-direct {p1, p0, v4, p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 143
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    return-object p1

    .line 143
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
