.class public Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "EnergyConsumerPowerStatsLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionEnergyConsumers(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    return-void
.end method
