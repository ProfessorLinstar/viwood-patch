.class public Lcom/android/server/credentials/metrics/RequestSessionMetric;
.super Ljava/lang/Object;
.source "RequestSessionMetric.java"


# instance fields
.field public final mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

.field public mCandidateBrowsingPhaseMetric:Ljava/util/List;

.field public final mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

.field public final mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

.field public mSequenceCounter:I

.field public final mSessionIdTrackTwo:I


# direct methods
.method public static synthetic $r8$lambda$kEazDx4T6PMjuY4Bf5XvCcdZak8(Ljava/util/Map;Landroid/credentials/CredentialOption;)V
    .locals 1

    .line 203
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 204
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

.method public constructor <init>(II)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 76
    iput p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    .line 77
    new-instance v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 78
    new-instance v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 79
    new-instance v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-direct {v0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    return-void
.end method


# virtual methods
.method public collectChosenClassType(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x14

    .line 271
    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 273
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenClassType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting chosen class type metadata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;Z)V
    .locals 2

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenUid(I)V

    .line 375
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setPrimary(Z)V

    .line 377
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 378
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryLatencyMicroseconds()I

    move-result v0

    .line 377
    invoke-virtual {p2, v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryPhaseLatencyMicroseconds(I)V

    .line 380
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 381
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v0

    .line 380
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setServiceBeganTimeNanoseconds(J)V

    .line 382
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v0

    .line 382
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryStartTimeNanoseconds(J)V

    .line 384
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 385
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    .line 384
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryEndTimeNanoseconds(J)V

    .line 386
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 387
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object p1

    .line 386
    invoke-virtual {p2, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    .line 388
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFinalFinishTimeNanoseconds(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during metric candidate to final transfer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectChosenProviderStatus(I)V
    .locals 1

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenProviderStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error setting chosen provider status metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCreateFlowInitialMetricInfo(ZLandroid/credentials/CreateCredentialRequest;)V
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setOriginSpecified(Z)V

    .line 191
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p2}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 191
    invoke-static {p1, p2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setRequestCounts(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting create flow metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V
    .locals 1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setHasException(Z)V

    .line 333
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 334
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenProviderStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during final phase provider status metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectFrameworkException(Ljava/lang/String;)V
    .locals 1

    .line 300
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    const/16 v0, 0x1e

    .line 301
    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFrameworkException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V
    .locals 2

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setOriginSpecified(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getRequestCountMap(Landroid/credentials/GetCredentialRequest;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setRequestCounts(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting get flow initial metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;Z)V
    .locals 0

    .line 236
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    .line 237
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setApiUsedPrepareFlow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting get flow initial metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectInitialPhaseMetricInfo(JII)V
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setCredentialServiceStartedTimeNanoseconds(J)V

    .line 119
    iget-object p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p1, p3}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setCallerUid(I)V

    .line 120
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p4}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setApiName(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting initial phase metric start info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectMetricPerBrowsingSelect(Landroid/credentials/selection/UserSelectionDialogResult;Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    .locals 1

    .line 254
    :try_start_0
    new-instance v0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    invoke-direct {v0}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCodeFromString(Ljava/lang/String;)I

    move-result p1

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->setEntryEnum(I)V

    .line 257
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->setProviderUid(I)V

    .line 258
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting browsing metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiCallStartTime(J)V
    .locals 0

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiCallStartTimeNanoseconds(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting ui start metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V
    .locals 2

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 312
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiPackageName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {p1, v1, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setOemUiUid(I)V

    .line 313
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 314
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getFallbackUiPackageName()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {p1, v1, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFallbackUiUid(I)V

    .line 315
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 316
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->createFrom(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setOemUiUsageStatus(Lcom/android/server/credentials/metrics/OemUiUsageStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during ui configuration result collection: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiResponseData(ZJ)V
    .locals 1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiReturned(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiCallEndTimeNanoseconds(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting ui response metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiReturnedFinalPhase(Z)V
    .locals 1

    .line 133
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiReturned(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting ui end time metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    return-object p0
.end method

.method public final getRequestCountMap(Landroid/credentials/GetCredentialRequest;)Ljava/util/Map;
    .locals 2

    .line 200
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during get request count map metric logging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestSessionMetric"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSessionIdTrackTwo()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    return p0
.end method

.method public logApiCalledAtFinish(I)V
    .locals 3

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V

    .line 483
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during final metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logAuthEntry(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;)V
    .locals 3

    .line 462
    const-string v0, "RequestSessionMetric"

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 463
    const-string p0, "An authentication entry was not clicked"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 466
    :cond_0
    iget v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 468
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during auth entry metric emit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logCandidateAggregateMetrics(Ljava/util/Map;)V
    .locals 1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectAverages(Ljava/util/Map;)V

    .line 445
    iget-object p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during aggregate candidate logging "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logCandidatePhaseMetrics(Ljava/util/Map;)V
    .locals 2

    .line 425
    :try_start_0
    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-static {p1, v0, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 427
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    .line 428
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 429
    :cond_0
    iget p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, p0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidateGetMetric(Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public returnIncrementSequence()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    return v0
.end method

.method public updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;Z)V
    .locals 0

    .line 348
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object p1

    .line 352
    invoke-virtual {p0, p1, p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception upon candidate to chosen metric transfer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
