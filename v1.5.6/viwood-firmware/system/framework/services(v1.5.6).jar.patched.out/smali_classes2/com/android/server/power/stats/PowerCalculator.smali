.class public abstract Lcom/android/server/power/stats/PowerCalculator;
.super Ljava/lang/Object;
.source "PowerCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static uCtoMah(J)D
    .locals 2

    .line 0
    long-to-double p0, p0

    const-wide v0, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 9

    .line 56
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 58
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 59
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/PowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract isPowerComponentSupported(I)Z
.end method
