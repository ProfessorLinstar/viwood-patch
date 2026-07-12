.class public Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mBaseReportedCount:I

.field public mBaseReportedTotalTimeUs:J

.field public mCurrentReportedCount:I

.field public mCurrentReportedTotalTimeUs:J

.field public mTimeBaseRunning:Z

.field public mTrackingReportedValues:Z

.field public mUpdateVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 1

    const/4 v0, 0x0

    .line 3238
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 3239
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3240
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 3227
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3228
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 3229
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 3230
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 3231
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3232
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move v0, p3

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3233
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method


# virtual methods
.method public add(JIJ)V
    .locals 2

    .line 3324
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    add-long/2addr p1, v0

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    add-int/2addr p3, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->update(JIJ)V

    return-void
.end method

.method public computeCurrentCountLocked()I
    .locals 2

    .line 3361
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_0

    .line 3362
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public computeRunTimeLocked(JJ)J
    .locals 2

    .line 3355
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p3, :cond_0

    .line 3356
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    sub-long/2addr p3, v0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    :goto_0
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public endSample(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3255
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3256
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3257
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    const/4 p1, 0x0

    .line 3258
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    .line 3259
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    return-void
.end method

.method public getUpdateVersion()I
    .locals 0

    .line 3267
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 3346
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCurrentReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mBaseReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mBaseReportedTotalTimeUs="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 3330
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 3331
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p1, :cond_0

    .line 3332
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3333
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_0
    const/4 p1, 0x1

    .line 3335
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 3340
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    const/4 p1, 0x0

    .line 3341
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public reset(ZJ)Z
    .locals 0

    .line 3377
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    const/4 p1, 0x0

    .line 3378
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    const-wide/16 p2, 0x0

    .line 3379
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    .line 3380
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    const/4 p0, 0x1

    return p0
.end method

.method public setUpdateVersion(I)V
    .locals 0

    .line 3263
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return-void
.end method

.method public update(JIJ)V
    .locals 8

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move-wide v6, p4

    .line 3283
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->update(JJIJ)V

    return-void
.end method

.method public update(JJIJ)V
    .locals 2

    .line 3293
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-nez v0, :cond_1

    sub-long v0, p1, p3

    .line 3296
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedTotalTimeUs:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p5, -0x1

    .line 3297
    :goto_0
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mBaseReportedCount:I

    :cond_1
    const/4 p3, 0x1

    .line 3300
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 3302
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    if-ge p5, p3, :cond_3

    .line 3303
    :cond_2
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->endSample(J)V

    .line 3306
    :cond_3
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 3307
    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    return-void
.end method
