.class public Lcom/android/server/power/stats/format/BasePowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "BasePowerStatsLayout.java"


# instance fields
.field public final mDeviceBatteryDischargeDurationPosition:I

.field public final mDeviceBatteryDischargePercentPosition:I

.field public final mDeviceBatteryDischargePosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionUsageDuration()V

    .line 35
    const-string v0, "discharge"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    .line 37
    const-string v0, "discharge-pct"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    .line 39
    const-string v0, "discharge-duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    return-void
.end method


# virtual methods
.method public addBatteryDischargeDuration([JJ)V
    .locals 2

    .line 96
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide v0, p1, p0

    add-long/2addr v0, p2

    aput-wide v0, p1, p0

    return-void
.end method

.method public addBatteryDischargePercent([JI)V
    .locals 6

    .line 81
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide v0, p1, p0

    int-to-long v2, p2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    aput-wide v0, p1, p0

    return-void
.end method

.method public addBatteryDischargeUah([JJ)V
    .locals 2

    .line 66
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    aget-wide v0, p1, p0

    add-long/2addr v0, p2

    aput-wide v0, p1, p0

    return-void
.end method

.method public getBatteryDischargeDuration([J)J
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide p0, p1, p0

    long-to-int p0, p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getBatteryDischargePercent([J)D
    .locals 2

    .line 89
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide p0, p1, p0

    long-to-int p0, p0

    int-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getBatteryDischargeUah([J)J
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 56
    const-string v0, "d-bd"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v0, "d-bdp"

    iget v1, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v0, "d-bdd"

    iget p0, p0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
