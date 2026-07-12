.class public Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "CustomEnergyConsumerPowerCalculator.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p3

    .line 53
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    const/4 p6, 0x0

    :goto_0
    if-ltz p4, :cond_0

    .line 54
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/os/UidBatteryConsumer$Builder;

    .line 55
    invoke-virtual {p7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {p0, p7, v0, p6}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D

    move-result-object p6

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;->uCtoMah([J)[D

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p3

    move p4, p2

    .line 64
    :goto_1
    array-length p7, p0

    if-ge p4, p7, :cond_1

    add-int/lit16 p7, p4, 0x3e8

    .line 65
    aget-wide v0, p0, p4

    invoke-virtual {p3, p7, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 72
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    .line 74
    :goto_2
    array-length p1, p6

    if-ge p2, p1, :cond_2

    add-int/lit16 p1, p2, 0x3e8

    .line 75
    aget-wide p3, p6, p2

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D
    .locals 4

    .line 86
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;->uCtoMah([J)[D

    move-result-object p0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    .line 89
    array-length p2, p0

    new-array p3, p2, [D

    goto :goto_0

    .line 90
    :cond_0
    array-length p2, p3

    array-length v0, p0

    if-eq p2, v0, :cond_1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of custom energy components is not the same for all apps: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CustomEnergyCsmrPowerCalc"

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    array-length p2, p0

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 98
    :goto_1
    array-length v0, p0

    if-ge p2, v0, :cond_3

    add-int/lit16 v0, p2, 0x3e8

    .line 99
    aget-wide v1, p0, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 102
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    aget-wide v0, p3, p2

    aget-wide v2, p0, p2

    add-double/2addr v0, v2

    aput-wide v0, p3, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p3

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final uCtoMah([J)[D
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 116
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
