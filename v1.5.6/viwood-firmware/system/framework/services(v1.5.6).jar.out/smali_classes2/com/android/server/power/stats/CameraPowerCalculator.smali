.class public Lcom/android/server/power/stats/CameraPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "CameraPowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "camera.avg"

    .line 38
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 3

    .line 49
    invoke-super/range {p0 .. p7}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCameraEnergyConsumptionUC()J

    move-result-wide p5

    .line 52
    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result p7

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getCameraOnTime(JI)J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    const/4 p4, 0x2

    if-ne p7, p4, :cond_0

    .line 58
    invoke-static {p5, p6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p4

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p4

    .line 63
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/4 p6, 0x3

    .line 65
    invoke-virtual {p0, p6, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 66
    invoke-virtual {p0, p6, p4, p5, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 p0, 0x1

    .line 67
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p6, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 70
    invoke-virtual {p0, p6, p4, p5, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/BatteryStats$Uid;->getCameraEnergyConsumptionUC()J

    move-result-wide p5

    .line 77
    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result p7

    .line 78
    iget-object v0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 79
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide p2

    const/4 p4, 0x2

    if-ne p7, p4, :cond_0

    .line 83
    invoke-static {p5, p6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p4

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p4

    :goto_0
    const/4 p0, 0x3

    .line 88
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/UidBatteryConsumer$Builder;

    .line 89
    invoke-virtual {p1, p0, p4, p5, p7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
