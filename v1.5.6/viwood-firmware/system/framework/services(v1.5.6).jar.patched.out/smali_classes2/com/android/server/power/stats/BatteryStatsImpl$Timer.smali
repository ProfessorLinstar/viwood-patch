.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCount:I

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTimeBeforeMarkUs:J

.field public mTotalTimeUs:J

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 3054
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 3055
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 3056
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mType:I

    .line 3057
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 3058
    invoke-virtual {p3, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 0

    .line 3042
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 3043
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 3044
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mType:I

    .line 3045
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 3047
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3048
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3049
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 3050
    invoke-virtual {p3, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public abstract computeCurrentCountLocked()I
.end method

.method public abstract computeRunTimeLocked(JJ)J
.end method

.method public detach()V
    .locals 1

    .line 3099
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountLocked(I)I
    .locals 0

    .line 3143
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p0

    return p0
.end method

.method public getTimeSinceMarkLocked(J)J
    .locals 2

    .line 3148
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    .line 3150
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getTotalTimeLocked(JI)J
    .locals 2

    .line 3137
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 3113
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3114
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    .line 3169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 3172
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    return-void
.end method

.method public reset(ZJ)Z
    .locals 0

    const-wide/16 p2, 0x0

    .line 3089
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    const/4 p2, 0x0

    .line 3090
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    if-eqz p1, :cond_0

    .line 3092
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2

    .line 3161
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide p2

    .line 3163
    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3164
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
