.class public Lcom/android/server/credentials/metrics/ProviderSessionMetric;
.super Ljava/lang/Object;
.source "ProviderSessionMetric.java"


# instance fields
.field public final mBrowsedAuthenticationMetric:Ljava/util/List;

.field public final mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;


# direct methods
.method public static synthetic $r8$lambda$0TLASEzCCwCE7T6Vbz6wy1BbPlQ(Ljava/util/Map;Landroid/service/credentials/CredentialEntry;)V
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$Gpsn_a4wWpZ60ixgVyx2DXzVvts(Ljava/util/Map;Landroid/service/credentials/CredentialEntry;)V
    .locals 1

    .line 304
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 61
    new-instance v1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-direct {v1, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 62
    new-instance p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    invoke-direct {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final beginCreateCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginCreateCredentialResponse;Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 4

    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 274
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 275
    sget-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object p1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p2, :cond_1

    .line 279
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_1
    array-length v3, v1

    if-lez v3, :cond_2

    .line 282
    aget-object v1, v1, v2

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object p2

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2
    new-instance p2, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p2, p1, v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 286
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    return-void
.end method

.method public final beginGetCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginGetCredentialResponse;Z)V
    .locals 8

    .line 291
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 292
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 293
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 294
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 295
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 296
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 298
    :goto_0
    sget-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v5, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 308
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p1, v1, v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    if-nez p2, :cond_1

    .line 311
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    return-void

    .line 314
    :cond_1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 315
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setAuthEntryCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    return-void
.end method

.method public final collectAuthEntryUpdate(ZZI)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getUsedAuthenticationMetric()Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setProviderUid(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setAuthReturned(Z)V

    .line 131
    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 133
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setProviderStatus(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setAuthReturned(Z)V

    .line 136
    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 138
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setProviderStatus(I)V

    :cond_1
    return-void
.end method

.method public collectAuthenticationExceptionStatus(Z)V
    .locals 1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getUsedAuthenticationMetric()Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    move-result-object p0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->setHasException(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setting authentication metric exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProviderSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 2

    .line 217
    const-string v0, "ProviderSessionMetric"

    :try_start_0
    instance-of v1, p1, Landroid/service/credentials/BeginGetCredentialResponse;

    if-eqz v1, :cond_0

    .line 218
    check-cast p1, Landroid/service/credentials/BeginGetCredentialResponse;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->beginGetCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 220
    :cond_0
    instance-of p2, p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    if-eqz p2, :cond_1

    .line 221
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->beginCreateCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginCreateCredentialResponse;Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    return-void

    .line 224
    :cond_1
    const-string p0, "Your response type is unsupported for candidate metric logging"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 227
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during candidate entry metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCandidateEntryMetrics(Ljava/util/List;)V
    .locals 5

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    sget-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 253
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {p1, v2, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 254
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    return-void
.end method

.method public collectCandidateExceptionStatus(Z)V
    .locals 1

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setHasException(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setting candidate metric exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProviderSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCandidateFrameworkException(Ljava/lang/String;)V
    .locals 1

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setFrameworkException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate exception metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProviderSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCandidateMetricSetupViaInitialMetric(Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCredentialServiceStartedTimeNanoseconds()J

    move-result-wide v1

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setServiceBeganTimeNanoseconds(J)V

    .line 197
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setStartQueryTimeNanoseconds(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate setup metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProviderSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCandidateMetricUpdate(ZZIZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectAuthEntryUpdate(ZZI)V

    return-void

    .line 163
    :cond_0
    iget-object p4, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p4, p5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setPrimary(Z)V

    .line 164
    iget-object p4, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p4, p3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setCandidateUid(I)V

    .line 165
    iget-object p3, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setQueryFinishTimeNanoseconds(J)V

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setQueryReturned(Z)V

    .line 169
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 171
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setProviderQueryStatus(I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 173
    iget-object p1, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setQueryReturned(Z)V

    .line 174
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 176
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->setProviderQueryStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during candidate update metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProviderSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public createAuthenticationBrowsingMetric()V
    .locals 2

    .line 262
    new-instance v0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 264
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;-><init>(I)V

    .line 265
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBrowsedAuthenticationMetric()Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    return-object p0
.end method

.method public getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    return-object p0
.end method

.method public final getUsedAuthenticationMetric()Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    return-object p0
.end method
