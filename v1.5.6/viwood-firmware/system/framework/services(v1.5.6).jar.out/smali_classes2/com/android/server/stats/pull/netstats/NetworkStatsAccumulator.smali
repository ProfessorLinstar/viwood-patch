.class public Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;
.super Ljava/lang/Object;
.source "NetworkStatsAccumulator.java"


# instance fields
.field public final mBucketDurationMillis:J

.field public mSnapshot:Landroid/net/NetworkStats;

.field public mSnapshotEndTimeMillis:J

.field public final mTemplate:Landroid/net/NetworkTemplate;

.field public final mWithTags:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkTemplate;ZJJ)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    .line 47
    iput-boolean p2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    .line 48
    iput-wide p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    .line 49
    new-instance p1, Landroid/net/NetworkStats;

    const-wide/16 p2, 0x0

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    .line 50
    iput-wide p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    return-void
.end method


# virtual methods
.method public hasEqualParameters(Landroid/net/NetworkTemplate;Z)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeExpandSnapshot(JLandroid/net/NetworkStats;Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)V
    .locals 9

    .line 82
    iget-wide v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    sub-long v7, p1, v0

    .line 83
    iget-wide v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    sub-long v2, v7, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expanding snapshot (mTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWithTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsAccumulator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iget-boolean v4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iget-wide v5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    move-object v2, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;->queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p4

    .line 90
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, p4}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    .line 91
    iput-wide v7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    .line 97
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 98
    invoke-virtual {p3, p1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p2, p1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    :cond_0
    return-void
.end method

.method public queryStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;
    .locals 1

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 63
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->maybeExpandSnapshot(JLandroid/net/NetworkStats;Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)V

    return-object v0
.end method

.method public final snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;
    .locals 7

    .line 110
    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iget-boolean v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iget-wide v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    iget-wide v5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    add-long/2addr v5, p1

    move-object v0, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;->queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p1

    .line 112
    iget-object p0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method
