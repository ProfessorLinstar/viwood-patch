.class public Lcom/android/server/power/stats/AudioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "AudioPowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 44
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "audio"

    .line 45
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 3

    move-wide p6, p3

    .line 56
    new-instance p4, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;

    const/4 p2, 0x0

    invoke-direct {p4, p2}, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/AudioPowerCalculator-IA;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    move v2, p2

    :goto_0
    if-ltz v2, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/os/UidBatteryConsumer$Builder;

    .line 62
    invoke-virtual {p3}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object p5

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/power/stats/AudioPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 65
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p2, p4, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 p5, 0x4

    .line 67
    invoke-virtual {p0, p5, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p2, p4, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    .line 68
    invoke-virtual {p0, p5, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p1, p4, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    .line 72
    invoke-virtual {p0, p5, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p1, p4, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    .line 73
    invoke-virtual {p0, p5, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, p5, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide p3

    .line 80
    iget-object p0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    const/4 p0, 0x4

    .line 81
    invoke-virtual {p1, p0, p3, p4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p5

    check-cast p5, Landroid/os/UidBatteryConsumer$Builder;

    .line 82
    invoke-virtual {p5, p0, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 83
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result p0

    if-nez p0, :cond_0

    .line 84
    iget-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr p0, p3

    iput-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    .line 85
    iget-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    :cond_0
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
