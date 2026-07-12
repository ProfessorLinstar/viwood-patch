.class public interface abstract Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;
.super Ljava/lang/Object;
.source "BluetoothPowerStatsCollector.java"


# virtual methods
.method public abstract getBluetoothStatsRetriever()Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;
.end method

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
