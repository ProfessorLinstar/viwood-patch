.class public Lcom/android/server/power/stats/MemoryPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "MemoryPowerCalculator.java"


# instance fields
.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7

    .line 31
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 32
    const-string/jumbo v0, "memory.bandwidths"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v1

    .line 33
    new-array v2, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 36
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 5

    .line 60
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 62
    aget-object v3, v3, v2

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 0

    const/4 p5, 0x0

    .line 48
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/MemoryPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide p6

    .line 50
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/power/stats/MemoryPowerCalculator;->calculatePower(Landroid/os/BatteryStats;JI)D

    move-result-wide p2

    .line 52
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/16 p1, 0xd

    .line 54
    invoke-virtual {p0, p1, p6, p7}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculatePower(Landroid/os/BatteryStats;JI)D
    .locals 6

    .line 70
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/stats/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 72
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    long-to-int v4, v4

    aget-object v3, v3, v4

    .line 74
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v4

    .line 75
    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xd

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
