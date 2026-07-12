.class public Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mNumTxStates:I

.field public final mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mProcessState:I

.field public mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method public static bridge synthetic -$$Nest$mgetOrCreateIdleTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->setState(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V
    .locals 0

    .line 4253
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 4254
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4255
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4256
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 4257
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4258
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4259
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4260
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method


# virtual methods
.method public final createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 7

    .line 4453
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 4454
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    .line 4456
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    invoke-static {p0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result p0

    invoke-static {v1, p0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    const-wide/16 v2, 0x0

    .line 4458
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    return-object v1
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public detach()V
    .locals 1

    .line 4365
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4366
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4367
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4368
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4369
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4370
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4371
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    return-void
.end method

.method public getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4380
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4381
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4238
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getMonitoredRailChargeConsumedMaMs()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getMonitoredRailChargeConsumedMaMs()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4476
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getOrCreateIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4387
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4388
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4390
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getOrCreateRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4424
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4427
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getOrCreateTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 3

    .line 4443
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4444
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    .line 4445
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    if-ge v0, v1, :cond_0

    .line 4446
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4449
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public bridge synthetic getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4238
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getPowerCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4467
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4417
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4418
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4238
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getScanTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getScanTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4399
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4238
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4408
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4436
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4437
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER_ARRAY()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 4264
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4265
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4266
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4267
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4268
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4270
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4271
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public final readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 2

    .line 4301
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4302
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4303
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p0, 0x5

    .line 4302
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 7

    .line 4319
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    .line 4324
    :goto_0
    new-array v2, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 4326
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4328
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x5

    .line 4326
    invoke-static {p1, p2, v6, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4330
    aput-object v4, v2, v3

    goto :goto_2

    :cond_1
    move p3, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public reset(ZJ)V
    .locals 1

    .line 4355
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4356
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4357
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4358
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4359
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4360
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4361
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    return-void
.end method

.method public final setState(IJ)V
    .locals 3

    .line 4480
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    .line 4481
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_0

    .line 4482
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4484
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_1

    .line 4485
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4487
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4488
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4489
    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 4280
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4281
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4282
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4283
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4284
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4285
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4286
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public final writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 4310
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4311
    invoke-static {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4313
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public final writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 4344
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4345
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4346
    array-length v0, p2

    :goto_0
    if-ge p0, v0, :cond_0

    aget-object v1, p2, p0

    .line 4347
    invoke-static {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4350
    :cond_1
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 4291
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4292
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4293
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4294
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4295
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4296
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4297
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
