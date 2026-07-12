.class public abstract Lcom/android/server/am/compaction/AggregatedCompactionStats;
.super Ljava/lang/Object;
.source "AggregatedCompactionStats.java"


# instance fields
.field public mFullCompactPerformed:J

.field public mFullCompactRequested:J

.field public mMaxCompactEfficiency:D

.field public mMaxSwapEfficiency:D

.field public mProcCompactionsMiscThrottled:J

.field public mProcCompactionsNoPidThrottled:J

.field public mProcCompactionsOomAdjThrottled:J

.field public mProcCompactionsRSSThrottled:J

.field public mProcCompactionsTimeThrottled:J

.field public mSomeCompactPerformed:J

.field public mSomeCompactRequested:J

.field public mSumOrigAnonRss:J

.field public mTotalAnonMemFreedKBs:J

.field public mTotalCpuTimeMillis:J

.field public mTotalDeltaAnonRssKBs:J

.field public mTotalZramConsumedKBs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMemStats(JJJJJ)V
    .locals 10

    move-wide v0, p5

    move-wide/from16 v2, p7

    long-to-double v4, v0

    long-to-double v6, v2

    div-double/2addr v4, v6

    .line 53
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    cmpl-double v8, v4, v8

    if-lez v8, :cond_0

    .line 54
    iput-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    :cond_0
    long-to-double v4, p1

    div-double/2addr v4, v6

    .line 57
    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    .line 58
    iput-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    .line 60
    :cond_1
    iget-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 61
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 62
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 63
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    .line 64
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    add-long p1, p1, p9

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v0, v2

    .line 70
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    iget-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v2, v4

    .line 71
    const-string v4, "    Performed / Requested:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Some: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Full: ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->getThrottledSome()J

    move-result-wide v4

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->getThrottledFull()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 79
    :cond_0
    const-string v10, "    Throttled:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       Some: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Full: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v4, "    Throttled by Type:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sub-long v2, v0, v2

    .line 84
    iget-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    sub-long/2addr v4, v6

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       NoPid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " OomAdj: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " RSS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Misc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Unaccounted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Throttle Percentage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    .line 99
    const-string v0, "    -----Memory Stats----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Total Delta Anon RSS (KB) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Total Physical ZRAM Consumed (KB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Total Anon Memory Freed (KB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Avg Swap Efficiency (KB) (Delta Anon RSS/Orig Anon RSS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Max Swap Efficiency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Avg Compaction Efficiency (Anon Freed/Anon RSS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Max Compaction Efficiency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Avg Compression Ratio (1 - ZRAM Consumed/DeltaAnonRSS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    .line 116
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    div-long v8, v2, v0

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Avg Anon Mem Freed/Compaction (KB) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Compaction Cost (ms/MB): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getThrottledFull()J
    .locals 4

    .line 48
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getThrottledSome()J
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
