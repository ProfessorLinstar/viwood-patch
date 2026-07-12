.class public final Lcom/android/server/am/compaction/CompactionStatsManager;
.super Ljava/lang/Object;
.source "CompactionStatsManager.java"


# static fields
.field public static TAG:Ljava/lang/String; = "CompactionStatsManager"

.field public static sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;


# instance fields
.field public mCompactionStatsHistory:Ljava/util/LinkedList;

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mPerProcessCompactStats:Ljava/util/LinkedHashMap;

.field public final mPerSourceCompactStats:Ljava/util/EnumMap;

.field public mSystemCompactionsPerformed:J

.field public mSystemTotalMemFreed:J

.field public mTotalCompactionDowngrades:J

.field public mTotalCompactionsCancelled:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 70
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    .line 77
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$1;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 87
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/compaction/CompactionStatsManager$2;-><init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V

    iput-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/compaction/CompactionStatsManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {v0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 11
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 264
    const-string v0, " Per-Process Compaction Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "-----"

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    iget-wide v8, v7, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long/2addr v3, v8

    .line 270
    iget-wide v8, v7, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v5, v8

    .line 271
    invoke-virtual {v7, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 272
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 275
    const-string v0, " Per-Source Compaction Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    .line 277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v7, p1}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->dump(Ljava/io/PrintWriter;)V

    .line 279
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Compactions Performed by profile: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " some, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " full"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total compactions downgraded: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v0, "Total compactions cancelled by reason: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    const-string v0, " System Compaction Memory Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Compactions Performed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Total Memory Freed (KB): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-wide v3, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 296
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    div-long/2addr v0, v3

    long-to-double v0, v0

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    .line 298
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Avg Mem Freed per Compact (KB): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Tracking last compaction stats for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v0, "Last Compaction per process stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const-string v0, "    (ProcessName,Source,DeltaAnonRssKBs,ZramConsumedKBs,AnonMemFreedKBs,SwapEfficiency,CompactEfficiency,CompactCost(ms/MB),procState,oomAdj,oomAdjReason)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/compaction/SingleCompactionStats;

    .line 309
    invoke-virtual {v2, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    goto :goto_4

    .line 311
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 312
    const-string v1, "Last 20 Compactions Stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/SingleCompactionStats;

    .line 317
    invoke-virtual {v0, p1}, Lcom/android/server/am/compaction/SingleCompactionStats;->dump(Ljava/io/PrintWriter;)V

    goto :goto_5

    :cond_5
    return-void
.end method

.method public getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/compaction/SingleCompactionStats;

    return-object p0
.end method

.method public getLastCompactionStats()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/compaction/SingleCompactionStats;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;
    .locals 1

    if-nez p1, :cond_0

    .line 242
    const-string p1, ""

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    invoke-direct {v0, p1}, Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    invoke-direct {v0, p1}, Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 257
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mPerSourceCompactStats:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public logCompactionCancelled(Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public logCompactionDowngrade()V
    .locals 4

    .line 222
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    return-void
.end method

.method public logCompactionRequested(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Ljava/lang/String;)V
    .locals 3

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object p0

    .line 126
    sget-object p3, Lcom/android/server/am/compaction/CompactionStatsManager$3;->$SwitchMap$com$android$server$am$CachedAppOptimizer$CompactProfile:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 136
    sget-object p0, Lcom/android/server/am/compaction/CompactionStatsManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stats cannot be logged for compaction type."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    iget-wide p2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    .line 133
    iget-wide p2, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr p2, v1

    iput-wide p2, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    return-void

    .line 128
    :cond_1
    iget-wide p2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 129
    iget-wide p2, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr p2, v1

    iput-wide p2, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    return-void
.end method

.method public logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V
    .locals 4

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object p2

    .line 145
    invoke-virtual {p0, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object p0

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    return-void

    .line 165
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 166
    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    return-void

    .line 161
    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 162
    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    return-void

    .line 157
    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 158
    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    return-void

    .line 153
    :cond_3
    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 154
    iget-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    add-long/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    return-void

    .line 149
    :cond_4
    iget-wide v2, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 150
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    return-void
.end method

.method public logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 191
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v1

    move-object/from16 v12, p2

    .line 193
    invoke-virtual {v0, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v13

    .line 195
    iget-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 196
    iget-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v2, v4

    iput-wide v2, v13, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    move-wide/from16 v14, p3

    goto :goto_0

    :cond_0
    move-wide v14, v2

    :goto_0
    cmp-long v4, p5, v2

    if-lez v4, :cond_1

    move-wide/from16 v16, p5

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v2

    :goto_1
    cmp-long v4, p7, v2

    if-lez v4, :cond_2

    move-wide/from16 v18, p7

    :goto_2
    move-wide/from16 v20, p9

    move-wide/from16 v22, p11

    goto :goto_3

    :cond_2
    move-wide/from16 v18, v2

    goto :goto_2

    .line 205
    :goto_3
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    .line 207
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 209
    new-instance v2, Lcom/android/server/am/compaction/SingleCompactionStats;

    move-object/from16 v4, p1

    move-object/from16 v3, p13

    move/from16 v18, p16

    move/from16 v19, p17

    move-wide v10, v6

    move-object v5, v12

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/compaction/SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    .line 213
    iget-object v1, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, v0, Lcom/android/server/am/compaction/CompactionStatsManager;->mCompactionStatsHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p19, :cond_3

    .line 217
    invoke-virtual {v2}, Lcom/android/server/am/compaction/SingleCompactionStats;->sendStat()V

    :cond_3
    return-void
.end method

.method public logSomeCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V
    .locals 4

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object p0

    .line 180
    iget-wide v0, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 181
    iget-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    return-void
.end method

.method public logSystemCompactionPerformed(J)V
    .locals 4

    .line 226
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemCompactionsPerformed:J

    .line 227
    iget-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mSystemTotalMemFreed:J

    return-void
.end method

.method public reinit()V
    .locals 0

    .line 116
    new-instance p0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {p0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object p0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    return-void
.end method
