.class public Lcom/android/server/credentials/metrics/shared/ResponseCollective;
.super Ljava/lang/Object;
.source "ResponseCollective.java"


# instance fields
.field public final mEntryCounts:Ljava/util/Map;

.field public final mResponseCounts:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    if-nez p2, :cond_1

    .line 59
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 60
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object p1, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    return-void
.end method

.method public static combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEntryCountsMap()Ljava/util/Map;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumEntriesTotal()I
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    return p0
.end method

.method public getResponseCountsMap()Ljava/util/Map;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueEntries()[I
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getUniqueEntryCounts()[I
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getUniqueResponseCounts()[I
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getUniqueResponseStrings()[Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 70
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method
