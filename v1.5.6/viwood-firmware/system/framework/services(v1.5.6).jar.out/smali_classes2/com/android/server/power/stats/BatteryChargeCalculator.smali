.class public Lcom/android/server/power/stats/BatteryChargeCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "BatteryChargeCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 8

    const/4 p0, 0x0

    .line 39
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result p5

    .line 38
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 41
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result p5

    int-to-double p6, p5

    .line 42
    invoke-virtual {p1, p6, p7}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 45
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result p6

    mul-int/2addr p6, p5

    int-to-double p6, p6

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p6, v0

    .line 47
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    mul-int/2addr v2, p5

    int-to-double v2, v2

    div-double/2addr v2, v0

    .line 49
    invoke-virtual {p1, p6, p7, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p5

    .line 50
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {p5, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 52
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long p5, v0, v6

    if-eqz p5, :cond_0

    .line 54
    div-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 57
    :cond_0
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p3

    cmp-long p5, p3, v6

    if-eqz p5, :cond_1

    .line 59
    div-long/2addr p3, v4

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 62
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide p2

    div-long/2addr p2, v4

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-nez p4, :cond_2

    add-double/2addr p6, v2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr p6, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p6, p2

    double-to-long p2, p6

    .line 68
    :cond_2
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    long-to-double p1, p2

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
