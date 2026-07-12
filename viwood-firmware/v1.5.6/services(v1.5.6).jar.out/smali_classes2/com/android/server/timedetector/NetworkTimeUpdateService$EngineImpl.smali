.class Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;


# instance fields
.field public final mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

.field public mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

.field public final mLocalDebugLog:Landroid/util/LocalLog;

.field public final mNormalPollingIntervalMillis:I

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public final mShortPollingIntervalMillis:I

.field public mTryAgainCounter:I

.field public final mTryAgainTimesMax:I


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;IIILandroid/util/NtpTrustedTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;III",
            "Landroid/util/NtpTrustedTime;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    if-gt p3, p2, :cond_0

    .line 405
    iput p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 406
    iput p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 407
    iput p4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 408
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    return-void

    .line 401
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 403
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 401
    const-string/jumbo p2, "shortPollingIntervalMillis (%s) > normalPollingIntervalMillis (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateTimeResultAgeMillis(Landroid/util/NtpTrustedTime$TimeResult;J)J
    .locals 0

    if-nez p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 629
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static formatElapsedRealtimeMillis(J)Ljava/lang/String;
    .locals 2

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 675
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNormalPollingIntervalMillis="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShortPollingIntervalMillis="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTryAgainTimesMax="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 680
    monitor-enter p0

    .line 681
    :try_start_0
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 682
    const-string/jumbo p1, "null"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 683
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    move-result-object p1

    .line 684
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastRefreshAttemptElapsedRealtimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTryAgainCounter="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 686
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 689
    const-string p1, "NtpTrustedTime:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 691
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p1, v0}, Landroid/util/NtpTrustedTime;->dump(Ljava/io/PrintWriter;)V

    .line 692
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 693
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 695
    const-string p1, "Debug log:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 697
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 698
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 699
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    .line 686
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public forceRefreshForTests(Landroid/net/Network;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)Z
    .locals 2

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->tryRefresh(Landroid/net/Network;)Z

    move-result p1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRefreshForTests: refreshSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 420
    const-string p2, "forceRefreshForTests: cachedTimeResult unexpectedly null"

    invoke-virtual {p0, p2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    return p1

    .line 423
    :cond_0
    const-string v1, "EngineImpl.forceRefreshForTests()"

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V

    :cond_1
    return p1
.end method

.method public final isRefreshAllowed(J)Z
    .locals 6

    .line 634
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 640
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    int-to-long v4, p0

    add-long/2addr v2, v4

    cmp-long p0, p1, v2

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final logToDebugAndDumpsys(Ljava/lang/String;)V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V
    .locals 4

    .line 664
    new-instance p0, Landroid/app/time/UnixEpochTime;

    .line 665
    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 666
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 667
    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    .line 668
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 670
    invoke-interface {p3, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;->submitSuggestion(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V
    .locals 12

    if-nez p1, :cond_0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "refreshIfRequiredAndReschedule: reason="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": No default network available. No refresh attempted and no next attempt scheduled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 455
    invoke-static {v0, v1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->calculateTimeResultAgeMillis(Landroid/util/NtpTrustedTime$TimeResult;J)J

    move-result-wide v3

    .line 457
    iget v5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    .line 459
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->isRefreshAllowed(J)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    move v1, v5

    .line 460
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->tryRefresh(Landroid/net/Network;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v5

    .line 469
    :goto_1
    monitor-enter p0

    .line 476
    :try_start_1
    iget-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v3

    .line 481
    iget-object v6, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 483
    invoke-static {v3, v6, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->calculateTimeResultAgeMillis(Landroid/util/NtpTrustedTime$TimeResult;J)J

    move-result-wide v8

    if-eqz v1, :cond_5

    if-eqz v2, :cond_3

    .line 494
    iput v5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    .line 496
    :cond_3
    iget v10, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    if-gez v10, :cond_4

    .line 501
    iput v4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    goto :goto_2

    .line 503
    :cond_4
    iget v11, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    add-int/2addr v11, v4

    iput v11, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    if-le v11, v10, :cond_5

    .line 505
    iput v5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 510
    :cond_5
    :goto_2
    iget v4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    int-to-long v10, v4

    cmp-long v10, v8, v10

    if-gez v10, :cond_6

    .line 515
    iput v5, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    :cond_6
    int-to-long v4, v4

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    .line 523
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V

    .line 530
    :cond_7
    iget v4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    if-lez v4, :cond_8

    .line 531
    iget v4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    :goto_3
    int-to-long v4, v4

    goto :goto_4

    :cond_8
    iget v4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    goto :goto_3

    :goto_4
    cmp-long v8, v8, v4

    if-gez v8, :cond_9

    .line 555
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v8

    :goto_5
    add-long/2addr v8, v4

    goto :goto_6

    .line 556
    :cond_9
    iget-object v8, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    if-eqz v8, :cond_a

    .line 578
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_5

    .line 584
    :cond_a
    const-string v8, "mLastRefreshAttemptElapsedRealtimeMillis unexpectedly missing. Scheduling using currentElapsedRealtimeMillis"

    .line 586
    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0, v8}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    add-long v8, v6, v4

    :goto_6
    cmp-long v10, v8, v6

    if-gtz v10, :cond_b

    .line 595
    const-string/jumbo v8, "nextRefreshElapsedRealtimeMillis is a time in the past. Scheduling using currentElapsedRealtimeMillis instead"

    .line 597
    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0, v8}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    add-long v8, v6, v4

    .line 602
    :cond_b
    invoke-interface {p3, v8, v9}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;->scheduleNextRefresh(J)V

    .line 604
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "refreshIfRequiredAndReschedule: network="

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", initialTimeResult="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", shouldAttemptRefresh="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", refreshSuccessful="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", currentElapsedRealtimeMillis="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {v6, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", latestTimeResult="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mTryAgainCounter="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", refreshAttemptDelayMillis="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", nextRefreshElapsedRealtimeMillis="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {v8, v9}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    .line 617
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 460
    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final tryRefresh(Landroid/net/Network;)Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 654
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    .line 654
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
