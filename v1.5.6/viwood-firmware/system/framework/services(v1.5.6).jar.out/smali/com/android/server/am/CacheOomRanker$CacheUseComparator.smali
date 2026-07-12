.class public Lcom/android/server/am/CacheOomRanker$CacheUseComparator;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CacheOomRanker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I
    .locals 2

    .line 459
    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerUseCount()I

    move-result p0

    int-to-long p0, p0

    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 460
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerUseCount()I

    move-result p2

    int-to-long v0, p2

    .line 459
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 456
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;->compare(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;)I

    move-result p0

    return p0
.end method
