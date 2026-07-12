.class public Lcom/android/server/power/stats/PhonePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "PhonePowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.active"

    .line 34
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 3

    .line 45
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getPhoneEnergyConsumptionUC()J

    move-result-wide p5

    .line 46
    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result p7

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    const/4 p4, 0x2

    if-eq p7, p4, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/server/power/stats/PhonePowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p4

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p5, p6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p4

    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double p0, p4, v1

    if-nez p0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p1, 0xe

    .line 65
    invoke-virtual {p0, p1, p4, p5, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xe

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
