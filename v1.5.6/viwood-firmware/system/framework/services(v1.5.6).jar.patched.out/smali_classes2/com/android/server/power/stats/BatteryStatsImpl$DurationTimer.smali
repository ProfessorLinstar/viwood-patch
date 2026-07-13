.class public Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mCurrentDurationMs:J

.field public mMaxDurationMs:J

.field public mStartTimeMs:J

.field public mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 3564
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 p1, -0x1

    .line 3534
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method


# virtual methods
.method public getCurrentDurationMsLocked(J)J
    .locals 5

    .line 3710
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3711
    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3712
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    div-long/2addr p1, v3

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 2

    .line 3688
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    .line 3690
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    return-wide p1

    .line 3694
    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide p0
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 2

    .line 3729
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    .line 3632
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 3609
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 3610
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_0

    const-wide/16 p1, 0x3e8

    .line 3611
    div-long/2addr p5, p1

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 3622
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 3623
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_0

    .line 3625
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr p5, p3

    add-long/2addr p1, p5

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    :cond_0
    const-wide/16 p1, -0x1

    .line 3627
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    .line 3596
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3597
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3598
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    const-wide/16 v0, -0x1

    .line 3599
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 3600
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    return-void
.end method

.method public reset(ZJ)Z
    .locals 2

    .line 3668
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result p1

    const-wide/16 v0, 0x0

    .line 3669
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3670
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3671
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3672
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return p1

    :cond_0
    const-wide/16 p2, -0x1

    .line 3675
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    return p1
.end method

.method public startRunningLocked(J)V
    .locals 3

    .line 3637
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3638
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3640
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    div-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    .line 3652
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3653
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 3654
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3655
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3656
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    :cond_0
    const-wide/16 v0, -0x1

    .line 3658
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 3659
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3663
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    .line 3584
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const-wide/16 v0, 0x3e8

    .line 3585
    div-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3586
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
