.class public interface abstract Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;
.super Ljava/lang/Object;
.source "CpuPowerStatsCollector.java"


# virtual methods
.method public abstract getClock()Lcom/android/internal/os/Clock;
.end method

.method public abstract getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
.end method

.method public abstract getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public getDefaultCpuPowerBrackets()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public getDefaultCpuPowerBracketsPerEnergyConsumer()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getKernelCpuStatsReader()Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;
.end method

.method public abstract getPowerProfile()Lcom/android/internal/os/PowerProfile;
.end method

.method public abstract getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
.end method

.method public abstract getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;
.end method
