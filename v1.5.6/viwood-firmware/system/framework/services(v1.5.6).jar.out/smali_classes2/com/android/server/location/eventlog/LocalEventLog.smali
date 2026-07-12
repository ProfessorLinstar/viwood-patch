.class public abstract Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# static fields
.field public static final IS_FILLER_OFFSET:I

.field static final MAX_TIME_DELTA:I

.field public static final TIME_DELTA_OFFSET:I


# instance fields
.field public final mEntries:[I

.field public mLastLogTime:J

.field public mLogEndIndex:I

.field public final mLogEvents:[Ljava/lang/Object;

.field public mLogSize:I

.field public mModificationCount:J

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    .line 51
    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->countTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    const v0, 0x7fffffff

    .line 52
    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->countTrailingZeros(I)I

    move-result v1

    sput v1, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 109
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 111
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 112
    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    .line 113
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 114
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    const-wide/16 p1, -0x1

    .line 116
    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 117
    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void
.end method

.method public static countTrailingZeros(I)I
    .locals 2

    .line 0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static createEntry(ZI)I
    .locals 1

    if-ltz p1, :cond_0

    .line 67
    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 68
    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    shl-int/2addr p0, v0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    shl-int/2addr p1, v0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getTimeDelta(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    .line 73
    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    ushr-int/2addr p0, v0

    return p0
.end method

.method public static isFiller(I)Z
    .locals 1

    .line 0
    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 9

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 214
    new-instance v5, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    .line 215
    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v3, v2

    :cond_2
    :goto_2
    if-ge v3, p1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 233
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getLog()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v3, v4, p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;->acceptLog(JLjava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 236
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    goto :goto_1

    .line 238
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addLog(JLjava/lang/Object;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 122
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_3

    .line 127
    iget-wide v5, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    sub-long v5, p1, v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    .line 132
    sget v2, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v7, v2

    div-long v7, v5, v7

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    move-wide v3, v5

    .line 136
    :goto_1
    sget v2, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v5, v2

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v5, 0x0

    .line 137
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(ZILjava/lang/Object;)V

    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 133
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->clear()V

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 146
    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 147
    iget-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    :cond_4
    long-to-int p1, v3

    .line 150
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final addLogEventInternal(ZILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 155
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 156
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 158
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v3, v2

    if-ne v0, v3, :cond_3

    .line 160
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimeDelta(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 161
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    .line 164
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    invoke-static {p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog;->createEntry(ZI)I

    move-result p1

    aput p1, v0, v1

    .line 169
    iget-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    aput-object p3, p1, v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 171
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 180
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 181
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 184
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public incrementIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result p0

    return p0

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 190
    iget p0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startIndex()I
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result p0

    return p0
.end method

.method public wrapIndex(I)I
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v0, p0

    rem-int/2addr p1, v0

    array-length v0, p0

    add-int/2addr p1, v0

    array-length p0, p0

    rem-int/2addr p1, p0

    return p1
.end method
