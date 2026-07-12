.class public Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public mActive:Z

.field public mFrequencyRange:I

.field public mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSignalStrength:I

.field public final perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method public static bridge synthetic -$$Nest$mgetRxDurationCounter(Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTxDurationCounter(Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 11

    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1343
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1347
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1352
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    const/4 v1, 0x0

    .line 1360
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 1365
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x2

    .line 1369
    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    .line 1373
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v1

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object v6, p2

    move-object v10, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getFrequencyRangeCount()I
    .locals 0

    .line 1451
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length p0, p0

    return p0
.end method

.method public final getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 5

    .line 1603
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-object v1

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p2

    .line 1607
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 1608
    new-array v3, p2, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1610
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_1

    .line 1618
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    return-object p0

    .line 1614
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected frequency range ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") requested in getRxDurationCounter"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getTimeSinceMark(IIJ)J
    .locals 0

    .line 1431
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    const-wide/16 p1, 0x3e8

    mul-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    move-result-wide p3

    div-long/2addr p3, p1

    return-wide p3
.end method

.method public final getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 8

    .line 1575
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    return-object v1

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result p3

    .line 1579
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, v2

    array-length v3, v0

    .line 1580
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x2

    .line 1581
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput p3, v4, v2

    const-class v5, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move v4, v2

    :goto_0
    if-ge v4, p3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_1

    .line 1584
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v4

    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v7, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1588
    :cond_2
    const-string p3, ") requested in getTxDurationCounter"

    const-string v0, "BatteryStatsImpl"

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    goto :goto_3

    :cond_3
    if-ltz p2, :cond_5

    .line 1593
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v3, v2

    array-length v2, v2

    if-lt p2, v2, :cond_4

    goto :goto_2

    .line 1598
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0

    .line 1594
    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected signal strength ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1589
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected frequency range ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public incrementRxDuration(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 1467
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public incrementTxDuration(IIJ)V
    .locals 1

    const/4 v0, 0x1

    .line 1459
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteActive(ZJ)V
    .locals 1

    .line 1382
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1383
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-eqz p1, :cond_1

    .line 1385
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p1, p1, v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p1, p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void

    .line 1388
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p1, p1, v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p1, p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public noteFrequencyRange(IJ)V
    .locals 2

    .line 1398
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1400
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1402
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void

    .line 1405
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1407
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void
.end method

.method public noteSignalStrength(IJ)V
    .locals 3

    .line 1414
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1416
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_1

    .line 1418
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1422
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1423
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 14

    .line 1524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1526
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v0, :cond_3

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_2

    if-ge v4, v2, :cond_1

    if-lt v6, v5, :cond_0

    goto :goto_2

    .line 1538
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_3

    .line 1533
    :cond_1
    :goto_2
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v13, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v13}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1536
    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1543
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    move v4, v3

    :goto_4
    if-ge v4, v0, :cond_7

    move v7, v3

    :goto_5
    if-ge v7, v1, :cond_6

    if-ge v4, v2, :cond_4

    if-lt v7, v5, :cond_5

    .line 1548
    :cond_4
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v13, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v13}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1551
    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1553
    :cond_5
    invoke-virtual {p0, v4, v7, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1558
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v6, :cond_9

    :goto_6
    if-ge v3, v0, :cond_9

    if-lt v3, v2, :cond_8

    .line 1563
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v12, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v12}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 1565
    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_7

    .line 1568
    :cond_8
    invoke-virtual {p0, v3, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public reset(J)V
    .locals 5

    .line 1474
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 1477
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1478
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_0

    goto :goto_2

    .line 1479
    :cond_0
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1481
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_2

    goto :goto_3

    .line 1482
    :cond_2
    aget-object v3, v3, v2

    invoke-virtual {v3, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setMark(J)V
    .locals 5

    .line 1439
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 1442
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 6

    .line 1490
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1491
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 1492
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    .line 1495
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1499
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 p3, 0x1

    if-nez p2, :cond_2

    .line 1500
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1502
    :cond_2
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move p2, v2

    :goto_2
    if-ge p2, v0, :cond_4

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    .line 1505
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, p2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1510
    :cond_4
    :goto_4
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-nez p2, :cond_5

    .line 1511
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1513
    :cond_5
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    if-ge v2, v0, :cond_6

    .line 1515
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
