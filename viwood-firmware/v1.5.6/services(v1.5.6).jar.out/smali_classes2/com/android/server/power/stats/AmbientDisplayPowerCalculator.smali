.class public Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "AmbientDisplayPowerCalculator.java"


# instance fields
.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    .line 39
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 41
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v4, "ambient.on.display"

    .line 44
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7

    .line 55
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getScreenDozeEnergyConsumptionUC()J

    move-result-wide v5

    .line 56
    invoke-static {v5, v6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v1

    const/4 p5, 0x0

    .line 57
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide p6

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateTotalPower(ILandroid/os/BatteryStats;JJ)D

    move-result-wide p2

    .line 61
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p1, 0xf

    .line 63
    invoke-virtual {p0, p1, p6, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 64
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 0

    .line 69
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final calculateEstimatedPower(Landroid/os/BatteryStats;J)D
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v0, v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 87
    invoke-virtual {p1, v3, p2, p3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 89
    iget-object v6, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final calculateTotalPower(ILandroid/os/BatteryStats;JJ)D
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 79
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateEstimatedPower(Landroid/os/BatteryStats;J)D

    move-result-wide p0

    return-wide p0

    .line 76
    :cond_0
    invoke-static {p5, p6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
