.class public interface abstract Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;
.super Ljava/lang/Object;
.source "WakelockPowerStatsCollector.java"


# virtual methods
.method public abstract getClock()Lcom/android/internal/os/Clock;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
.end method

.method public abstract getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;
.end method

.method public abstract getWakelockDurationRetriever()Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;
.end method
