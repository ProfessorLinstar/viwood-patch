.class public abstract Lcom/android/server/credentials/MetricUtilities;
.super Ljava/lang/Object;
.source "MetricUtilities.java"


# static fields
.field public static final DEFAULT_REPEATED_BOOL:[Z

.field public static final DEFAULT_REPEATED_INT_32:[I

.field public static final DEFAULT_REPEATED_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 54
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 55
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_STR:[Ljava/lang/String;

    .line 56
    new-array v0, v0, [Z

    sput-object v0, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_BOOL:[Z

    return-void
.end method

.method public static generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHighlyUniqueInteger()I
    .locals 1

    .line 102
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public static getMetricTimestampDifferenceMicroseconds(JJ)I
    .locals 5

    sub-long v0, p0, p2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    .line 114
    const-string v4, "CredentialManager"

    if-lez v2, :cond_0

    .line 115
    const-string p0, "Input timestamps are too far apart and unsupported, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_1

    .line 120
    const-string p0, "The timestamps aren\'t in expected order, falling back to default int"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-wide/16 p0, 0x3e8

    .line 123
    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static getPackageUid(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 89
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 88
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find uid for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    .locals 23

    .line 472
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getSessionIdProvider()I

    move-result v1

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isQueryReturned()Z

    move-result v3

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumProviders()I

    move-result v4

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMinProviderTimestampNanoseconds()J

    move-result-wide v5

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v7

    .line 477
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v5

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMaxProviderTimestampNanoseconds()J

    move-result-wide v6

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v8

    .line 481
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v6

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v8

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v9

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v10

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalQueryFailures()I

    move-result v11

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsQuery()[Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsQuery()[I

    move-result-object v13

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v14

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v15

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v16

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v17

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalAuthFailures()I

    move-result v18

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsAuth()[Ljava/lang/String;

    move-result-object v19

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsAuth()[I

    move-result-object v20

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumAuthEntriesTapped()I

    move-result v21

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isAuthReturned()Z

    move-result v22

    const/16 v0, 0x29b

    move/from16 v2, p1

    .line 471
    invoke-static/range {v0 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIII[Ljava/lang/String;[I[I[II[Ljava/lang/String;[I[Ljava/lang/String;[I[I[II[Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during total candidate metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    .locals 12

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getSessionIdProvider()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v3

    .line 230
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v5

    .line 234
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v6

    .line 236
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v7

    .line 238
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isHasException()Z

    move-result v9

    .line 241
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderStatus()I

    move-result v10

    .line 243
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isAuthReturned()Z

    move-result v11

    const/16 v0, 0x29e

    move v2, p1

    .line 225
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I[I[ILjava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate auth metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledCandidateGetMetric(Ljava/util/Map;I)V
    .locals 7

    .line 267
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 268
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 269
    invoke-virtual {v0}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v2

    .line 275
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v4

    .line 277
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v6

    const/16 v1, 0x29d

    move v3, p1

    .line 271
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate get metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 24

    .line 304
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 308
    new-array v6, v1, [I

    .line 309
    new-array v7, v1, [I

    .line 310
    new-array v8, v1, [I

    .line 311
    new-array v9, v1, [I

    .line 312
    new-array v10, v1, [Z

    .line 313
    new-array v11, v1, [I

    .line 314
    new-array v13, v1, [I

    .line 315
    new-array v14, v1, [I

    .line 316
    new-array v12, v1, [I

    .line 317
    new-array v2, v1, [I

    .line 318
    new-array v15, v1, [I

    .line 319
    new-array v3, v1, [Ljava/lang/String;

    .line 320
    new-array v1, v1, [Z

    .line 322
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move-object/from16 v17, v3

    move/from16 v16, v4

    const/4 v3, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/server/credentials/ProviderSession;

    .line 323
    iget-object v5, v5, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 324
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v5

    move-object/from16 v18, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 326
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v3

    :cond_0
    if-nez v4, :cond_1

    .line 329
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isQueryReturned()Z

    move-result v4

    .line 331
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v19

    aput v19, v6, v16

    move-object/from16 v22, v1

    .line 334
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v0

    .line 333
    invoke-virtual {v5, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v7, v16

    .line 337
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    .line 336
    invoke-virtual {v5, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v8, v16

    .line 338
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getProviderQueryStatus()I

    move-result v0

    aput v0, v9, v16

    .line 339
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isHasException()Z

    move-result v0

    aput-boolean v0, v10, v16

    .line 340
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getNumEntriesTotal()I

    move-result v0

    aput v0, v11, v16

    .line 342
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 343
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v13, v16

    .line 344
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    aput v0, v14, v16

    .line 346
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v12, v16

    .line 348
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 349
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v2, v16

    .line 350
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v15, v16

    .line 352
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v17, v16

    .line 353
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isPrimary()Z

    move-result v0

    aput-boolean v0, v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    goto/16 :goto_0

    :cond_2
    move-object/from16 v22, v1

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v18

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v19

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v20

    .line 385
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v21

    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->hasApiUsedPrepareFlow()Z

    move-result v23

    move-object/from16 v16, v2

    const/16 v2, 0x28c

    move v5, v4

    move/from16 v4, p1

    .line 356
    invoke-static/range {v2 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ[I[I[I[I[Z[I[I[I[I[I[I[Ljava/lang/String;Z[Ljava/lang/String;[II[ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during candidate provider uid metric emit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 30

    move-object/from16 v0, p0

    .line 154
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 155
    new-array v2, v1, [I

    .line 156
    new-array v1, v1, [I

    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 159
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v6

    aput v6, v2, v4

    .line 160
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getProviderUid()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdProvider()I

    move-result v3

    .line 166
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v5

    .line 167
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenUid()I

    move-result v6

    .line 170
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v7

    .line 169
    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    .line 173
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v8

    .line 172
    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    .line 176
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v9

    .line 175
    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    .line 179
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v10

    .line 178
    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    .line 182
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v11

    .line 181
    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    .line 183
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v12

    .line 184
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v13

    sget-object v14, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 195
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v23

    .line 197
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v24

    .line 199
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v25

    .line 201
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v26

    .line 203
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v27

    .line 204
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v28

    .line 205
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenClassType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v20, v2

    const/16 v2, 0x28d

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v22, p2

    move/from16 v4, p3

    move-object/from16 v21, v1

    .line 163
    invoke-static/range {v2 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIIZ[IIIIII[I[II[I[I[Ljava/lang/String;[ILjava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during final provider uid emit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    .locals 14

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v1

    .line 432
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCallerUid()I

    move-result v2

    .line 433
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getSessionIdCaller()I

    move-result v3

    .line 436
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCredentialServiceStartedTimeNanoseconds()J

    move-result-wide v5

    .line 438
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCountRequestClassType()I

    move-result v7

    .line 440
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v9

    .line 444
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v10

    .line 446
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getAutofillSessionId()I

    move-result v11

    .line 448
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getAutofillRequestId()I

    move-result v12

    .line 450
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->hasApiUsedPrepareFlow()Z

    move-result v13

    const/16 v0, 0x28b

    move v4, p1

    .line 430
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIJI[Ljava/lang/String;[IZIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during initial metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 26

    move-object/from16 v0, p0

    .line 545
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 546
    new-array v2, v1, [I

    .line 547
    new-array v1, v1, [I

    .line 549
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 550
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v5

    aput v5, v2, v4

    const/4 v5, -0x1

    .line 551
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdCaller()I

    move-result v3

    .line 557
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v5

    .line 560
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v6

    .line 559
    invoke-virtual {v0, v6, v7}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v6

    .line 563
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v7

    .line 562
    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    .line 566
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v8

    .line 565
    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    .line 569
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v9

    .line 568
    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    .line 572
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v10

    .line 571
    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    .line 573
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v11

    .line 574
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v12

    .line 576
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v13

    .line 578
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v14

    .line 580
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v15

    .line 582
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v16

    .line 584
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v17

    .line 588
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v21

    .line 589
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getOemUiUid()I

    move-result v22

    .line 590
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFallbackUiUid()I

    move-result v23

    .line 591
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getOemUiUsageStatus()I

    move-result v24

    .line 592
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenClassType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v18, v2

    const/16 v2, 0x29c

    move/from16 v20, p2

    move/from16 v4, p3

    move-object/from16 v19, v1

    .line 554
    invoke-static/range {v2 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIZ[I[I[Ljava/lang/String;[ILjava/lang/String;[I[IIZIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during final no uid metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V
    .locals 1

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result p0

    .line 412
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/16 v0, 0x29f

    .line 409
    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during simple v2 metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
