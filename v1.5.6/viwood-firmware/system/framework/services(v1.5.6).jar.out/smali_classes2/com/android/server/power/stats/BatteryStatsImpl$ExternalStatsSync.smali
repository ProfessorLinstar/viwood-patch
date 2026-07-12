.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# virtual methods
.method public abstract cancelCpuSyncDueToWakelockChange()V
.end method

.method public abstract scheduleCleanupDueToRemovedUser(I)V
.end method

.method public abstract scheduleCpuSyncDueToRemovedUid(I)V
.end method

.method public abstract scheduleCpuSyncDueToWakelockChange(J)V
.end method

.method public abstract scheduleSync(Ljava/lang/String;I)V
.end method

.method public abstract scheduleSyncDueToProcessStateChange(IJ)V
.end method

.method public abstract scheduleSyncDueToScreenStateChange(IZZI[I)V
.end method
