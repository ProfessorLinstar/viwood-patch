.class public Lcom/android/server/power/stats/CpuPowerCalculator$Result;
.super Ljava/lang/Object;
.source "CpuPowerCalculator.java"


# instance fields
.field public cpuFreqTimes:[J

.field public durationFgMs:J

.field public durationMs:J

.field public packageWithHighestDrain:Ljava/lang/String;

.field public perProcStatePowerMah:[D

.field public powerMah:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/CpuPowerCalculator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerCalculator$Result;-><init>()V

    return-void
.end method
