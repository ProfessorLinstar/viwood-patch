.class public Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 1

    .line 3996
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 3997
    new-instance p4, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 p5, 0x0

    move-object v0, p2

    move-object p2, p1

    move-object p1, p4

    move p4, p3

    move-object p3, v0

    invoke-direct/range {p1 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 4035
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4036
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    return-void
.end method

.method public bridge synthetic getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 3967
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
    .locals 0

    .line 4003
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 4053
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4054
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public reset(ZJ)Z
    .locals 2

    .line 4028
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4029
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public startRunningLocked(J)V
    .locals 0

    .line 4008
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 4009
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 0

    .line 4020
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4021
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 0

    .line 4014
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 4015
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 0

    .line 4047
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 4048
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    return-void
.end method
