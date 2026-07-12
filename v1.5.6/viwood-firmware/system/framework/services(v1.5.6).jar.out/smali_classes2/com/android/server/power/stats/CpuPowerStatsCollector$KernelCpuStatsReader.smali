.class public Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;
.super Ljava/lang/Object;
.source "CpuPowerStatsCollector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportedFeature()Z
    .locals 0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeIsSupportedFeature()Z

    move-result p0

    return p0
.end method

.method public native nativeIsSupportedFeature()Z
.end method

.method public native nativeReadCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J
.end method

.method public readCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J
    .locals 0

    .line 428
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeReadCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    move-result-wide p0

    return-wide p0
.end method
