.class public interface abstract Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"


# virtual methods
.method public abstract getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
.end method

.method public abstract getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
.end method

.method public abstract getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method public abstract getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method public abstract getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
.end method
