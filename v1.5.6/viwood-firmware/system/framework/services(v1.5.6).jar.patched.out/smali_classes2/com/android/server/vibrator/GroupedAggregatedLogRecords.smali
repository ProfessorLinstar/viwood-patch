.class public abstract Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.super Ljava/lang/Object;
.source "GroupedAggregatedLogRecords.java"


# instance fields
.field public final mAggregationTimeLimitMs:I

.field public final mGroupedRecords:Landroid/util/SparseArray;

.field public final mSizeLimit:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    .line 41
    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    .line 42
    iput p2, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    .locals 5

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getGroupKey()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayDeque;

    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    .line 65
    iget v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 67
    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    int-to-long v3, v3

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->record(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-object v2

    .line 73
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    if-lt v1, v3, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 76
    :cond_2
    new-instance v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;-><init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V

    .line 83
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 84
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 85
    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 88
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->findGroupKeyProtoFieldId(I)J

    move-result-wide v1

    .line 95
    iget-object v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 96
    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
.end method

.method public abstract findGroupKeyProtoFieldId(I)J
.end method
