.class public Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CacheOomRanker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I
    .locals 2

    .line 452
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide p0

    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 449
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;->compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I

    move-result p0

    return p0
.end method
