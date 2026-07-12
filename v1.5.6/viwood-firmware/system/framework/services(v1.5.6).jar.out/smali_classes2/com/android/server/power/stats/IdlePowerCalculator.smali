.class public Lcom/android/server/power/stats/IdlePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "IdlePowerCalculator.java"


# instance fields
.field public final mAveragePowerCpuIdleMahPerUs:D

.field public final mAveragePowerCpuSuspendMahPerUs:D

.field public mDurationMs:J

.field public mPowerMah:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 39
    const-string v0, "cpu.suspend"

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    .line 42
    const-string v0, "cpu.idle"

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/IdlePowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V

    .line 57
    iget-wide p2, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 p4, 0x0

    cmpl-double p0, p2, p4

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 58
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p1, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const/16 p3, 0x10

    .line 60
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p1, v0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    .line 61
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_0
    return-void
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V
    .locals 4

    .line 72
    invoke-virtual {p1, p2, p3, p6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide p2

    .line 73
    invoke-virtual {p1, p4, p5, p6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide p4

    long-to-double v0, p2

    .line 79
    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    mul-double/2addr v0, v2

    long-to-double p4, p4

    .line 80
    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    mul-double/2addr p4, v2

    add-double/2addr v0, p4

    .line 81
    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 p4, 0x3e8

    .line 88
    div-long/2addr p2, p4

    iput-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
