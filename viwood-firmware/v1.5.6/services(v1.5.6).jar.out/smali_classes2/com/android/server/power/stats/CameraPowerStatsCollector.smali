.class public Lcom/android/server/power/stats/CameraPowerStatsCollector;
.super Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.source "CameraPowerStatsCollector.java"


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;)V
    .locals 7

    const/4 v0, 0x3

    .line 28
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v6}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    const/4 v3, 0x3

    const/4 v5, 0x7

    move-object v1, p0

    move-object v2, p1

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;ILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    return-void
.end method
