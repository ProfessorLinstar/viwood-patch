.class public Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mAcquireTimeUs:J

.field public mInList:Z

.field public mNesting:I

.field public mTimeoutUs:J

.field public final mTimerPool:Ljava/util/ArrayList;

.field public final mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

.field public mUpdateTimeUs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 2

    .line 3775
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    const-wide/16 v0, -0x1

    .line 3754
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3776
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 3777
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2

    .line 3767
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    .line 3754
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3768
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 3769
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 3770
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    return-void
.end method

.method public static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J
    .locals 11

    .line 3884
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 3886
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 3887
    iget-wide v7, v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v7, p0, v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_1

    int-to-long v9, v0

    .line 3889
    div-long/2addr v7, v9

    if-ne v6, p3, :cond_0

    move-wide v4, v7

    .line 3893
    :cond_0
    iget-wide v9, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3895
    :cond_1
    iput-wide p0, v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-wide v4
.end method


# virtual methods
.method public computeCurrentCountLocked()I
    .locals 0

    .line 3913
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public computeRunTimeLocked(JJ)J
    .locals 6

    .line 3902
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-long v4, v2, p3

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    add-long p1, v2, p3

    .line 3905
    :cond_0
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_2

    .line 3907
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    int-to-long v0, p0

    div-long v0, p1, v0

    :cond_2
    add-long/2addr p3, v0

    return-wide p3
.end method

.method public detach()V
    .locals 1

    .line 3930
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    .line 3931
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3932
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isRunningLocked()Z
    .locals 0

    .line 3835
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 3803
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mNesting="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mUpdateTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mAcquireTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1

    .line 3790
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3794
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 3795
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_0
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 3938
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 3939
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    return-void
.end method

.method public reset(ZJ)Z
    .locals 3

    .line 3918
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v1, v2

    .line 3919
    :cond_1
    invoke-super {p0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 3920
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez p1, :cond_2

    .line 3921
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    :cond_2
    const-wide/16 p1, -0x1

    .line 3924
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return v0
.end method

.method public setMark(J)V
    .locals 4

    .line 3949
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    .line 3950
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_1

    .line 3952
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3953
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    goto :goto_0

    .line 3955
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3956
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3959
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 3781
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    return-void
.end method

.method public startRunningLocked(J)V
    .locals 3

    .line 3809
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    .line 3810
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    .line 3811
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3812
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3815
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    .line 3817
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3819
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3821
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3822
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    return-void

    :cond_1
    const-wide/16 p1, -0x1

    .line 3824
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    :cond_2
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1

    .line 3873
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3874
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3875
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 4

    .line 3840
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3843
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    .line 3844
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    .line 3845
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3848
    invoke-static {v2, v3, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;)J

    .line 3850
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3852
    :cond_1
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3853
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p1, 0x0

    .line 3855
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3864
    :goto_0
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_2

    .line 3867
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_2
    :goto_1
    return-void
.end method
