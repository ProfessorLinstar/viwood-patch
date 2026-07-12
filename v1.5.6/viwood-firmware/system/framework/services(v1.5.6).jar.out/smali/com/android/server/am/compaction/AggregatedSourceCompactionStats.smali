.class public final Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
.super Lcom/android/server/am/compaction/AggregatedCompactionStats;
.source "AggregatedSourceCompactionStats.java"


# instance fields
.field public final mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method
