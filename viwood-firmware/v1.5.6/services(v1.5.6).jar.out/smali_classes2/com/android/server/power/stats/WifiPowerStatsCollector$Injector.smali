.class public interface abstract Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;
.super Ljava/lang/Object;
.source "WifiPowerStatsCollector.java"


# virtual methods
.method public abstract getClock()Lcom/android/internal/os/Clock;
.end method

.method public abstract getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
.end method

.method public abstract getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;
.end method

.method public abstract getWifiManager()Landroid/net/wifi/WifiManager;
.end method

.method public abstract getWifiNetworkStatsSupplier()Ljava/util/function/Supplier;
.end method

.method public abstract getWifiStatsRetriever()Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;
.end method

.method public abstract networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
.end method
