.class public Lcom/android/server/power/stats/SensorPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "SensorPowerCalculator.java"


# instance fields
.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 37
    iget-object v2, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 4

    .line 51
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p5

    const/4 p6, 0x1

    sub-int/2addr p5, p6

    const-wide/16 v0, 0x0

    :goto_0
    if-ltz p5, :cond_1

    .line 53
    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/os/UidBatteryConsumer$Builder;

    .line 54
    invoke-virtual {p7}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    invoke-virtual {p0, p7, v2, p3, p4}, Lcom/android/server/power/stats/SensorPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;J)D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_0
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 59
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p2, 0x9

    .line 61
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 62
    invoke-virtual {p1, p6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;J)D
    .locals 3

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/power/stats/SensorPowerCalculator;->calculatePowerMah(Landroid/os/BatteryStats$Uid;JI)D

    move-result-wide v1

    .line 72
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/power/stats/SensorPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide p2

    const/16 p0, 0x9

    .line 71
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/UidBatteryConsumer$Builder;

    .line 73
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-wide v1
.end method

.method public final calculateDuration(Landroid/os/BatteryStats$Uid;JI)J
    .locals 7

    .line 79
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 88
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 89
    invoke-virtual {v3, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    add-long/2addr v0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final calculatePowerMah(Landroid/os/BatteryStats$Uid;JI)D
    .locals 9

    .line 96
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 99
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Sensor;

    .line 106
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 107
    invoke-virtual {v5, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    long-to-float v5, v5

    .line 111
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getPower()F

    move-result v4

    mul-float/2addr v5, v4

    const v4, 0x4a5bba00    # 3600000.0f

    div-float/2addr v5, v4

    float-to-double v4, v5

    add-double/2addr v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
