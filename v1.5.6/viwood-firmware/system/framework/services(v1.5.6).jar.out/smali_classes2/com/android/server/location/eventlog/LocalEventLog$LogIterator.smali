.class public final Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# instance fields
.field public mCount:I

.field public mCurrentLogEvent:Ljava/lang/Object;

.field public mCurrentTime:J

.field public mIndex:I

.field public mLogTime:J

.field public final mModificationCount:J

.field public final synthetic this$0:Lcom/android/server/location/eventlog/LocalEventLog;


# direct methods
.method public constructor <init>(Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 2

    .line 280
    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    monitor-enter p1

    .line 282
    :try_start_0
    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    .line 284
    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    const/4 v0, -0x1

    .line 285
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 286
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    .line 288
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    .line 289
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final checkModifications()V
    .locals 4

    .line 334
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public getLog()Ljava/lang/Object;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->checkModifications()V

    .line 295
    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget p0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-ge v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final increment()V
    .locals 6

    .line 322
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-object v1, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimeDelta(I)I

    move-result v0

    int-to-long v0, v0

    .line 324
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    .line 325
    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 326
    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object v4, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget v5, v4, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-ge v3, v5, :cond_2

    .line 327
    iget-object v0, v4, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimeDelta(I)I

    move-result v0

    int-to-long v0, v0

    .line 329
    :cond_2
    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget v4, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-ge v2, v4, :cond_3

    iget-object v2, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->isFiller(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    return-void
.end method

.method public next()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    monitor-enter v0

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-object v3, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    iget v4, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimeDelta(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    .line 306
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-object v1, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    .line 309
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 302
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 309
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
