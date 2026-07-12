.class public Lcom/android/server/credentials/metrics/CandidateAggregateMetric;
.super Ljava/lang/Object;
.source "CandidateAggregateMetric.java"


# instance fields
.field public mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAuthReturned:Z

.field public mExceptionCountAuth:Ljava/util/Map;

.field public mExceptionCountQuery:Ljava/util/Map;

.field public mMaxProviderTimestampNanoseconds:J

.field public mMinProviderTimestampNanoseconds:J

.field public mNumAuthEntriesTapped:I

.field public mNumProviders:I

.field public mQueryReturned:Z

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mTotalAuthFailures:I

.field public mTotalQueryFailures:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    const-wide/16 v1, -0x1

    .line 41
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 43
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 46
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 48
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 50
    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 51
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v3, v4, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 53
    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 54
    invoke-direct {v3, v4, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 56
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    .line 58
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    .line 60
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 62
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 64
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalAuthFailures:I

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    .line 69
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    return-void
.end method


# virtual methods
.method public final collectAuthAggregates(Ljava/util/Map;)V
    .locals 9

    .line 125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 129
    invoke-virtual {v2}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getBrowsedAuthenticationMetric()Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 132
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    iget v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 136
    iget-boolean v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    const/4 v6, 0x0

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isAuthReturned()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 137
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getResponseCountsMap()Ljava/util/Map;

    move-result-object v7

    .line 138
    invoke-static {v0, v7}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 141
    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getEntryCountsMap()Ljava/util/Map;

    move-result-object v4

    .line 140
    invoke-static {v1, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 142
    iget v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isHasException()Z

    move-result v7

    add-int/2addr v4, v7

    iput v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 143
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 146
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 145
    invoke-interface {v8, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 144
    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_5
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p1, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public collectAverages(Ljava/util/Map;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectQueryAggregates(Ljava/util/Map;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectAuthAggregates(Ljava/util/Map;)V

    return-void
.end method

.method public final collectQueryAggregates(Ljava/util/Map;)V
    .locals 12

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v2, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/credentials/ProviderSession;

    .line 93
    invoke-virtual {v6}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    .line 96
    iget v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    sub-int/2addr v6, v9

    iput v6, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    goto :goto_0

    .line 99
    :cond_1
    iget-wide v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    const-wide/16 v10, -0x1

    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    .line 100
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 102
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    const/4 v8, 0x0

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isQueryReturned()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v9

    :goto_2
    iput-boolean v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    .line 103
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v7

    .line 105
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getResponseCountsMap()Ljava/util/Map;

    move-result-object v10

    .line 104
    invoke-static {v0, v10}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 107
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getEntryCountsMap()Ljava/util/Map;

    move-result-object v7

    .line 106
    invoke-static {v1, v7}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 109
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v10

    .line 108
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 111
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v10

    .line 110
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 112
    iget v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isHasException()Z

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 113
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 114
    iget-object v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 116
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 115
    invoke-interface {v11, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 114
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :cond_5
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    .line 120
    iput-wide v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    .line 121
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p1, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-object p0
.end method

.method public getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-object p0
.end method

.method public getMaxProviderTimestampNanoseconds()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    return-wide v0
.end method

.method public getMinProviderTimestampNanoseconds()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    return-wide v0
.end method

.method public getNumAuthEntriesTapped()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    return p0
.end method

.method public getNumProviders()I
    .locals 0

    .line 154
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    return p0
.end method

.method public getServiceBeganTimeNanoseconds()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    return-wide v0
.end method

.method public getSessionIdProvider()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    return p0
.end method

.method public getTotalAuthFailures()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalAuthFailures:I

    return p0
.end method

.method public getTotalQueryFailures()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    return p0
.end method

.method public getUniqueExceptionCountsAuth()[I
    .locals 1

    .line 230
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

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

.method public getUniqueExceptionCountsQuery()[I
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

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

.method public getUniqueExceptionStringsAuth()[Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 219
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueExceptionStringsQuery()[Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 197
    iget-object p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public isAuthReturned()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    return p0
.end method

.method public isQueryReturned()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    return p0
.end method
