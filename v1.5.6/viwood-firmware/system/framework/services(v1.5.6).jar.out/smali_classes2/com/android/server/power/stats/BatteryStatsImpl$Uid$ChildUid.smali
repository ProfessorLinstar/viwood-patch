.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V
    .locals 7

    .line 10854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10855
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 10856
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    .line 10858
    invoke-static {v1, v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 10860
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mtrackPerProcStateCpuTimes(Lcom/android/server/power/stats/BatteryStatsImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10861
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result p1

    .line 10863
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 10867
    new-array p0, p1, [J

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10869
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-void
.end method
