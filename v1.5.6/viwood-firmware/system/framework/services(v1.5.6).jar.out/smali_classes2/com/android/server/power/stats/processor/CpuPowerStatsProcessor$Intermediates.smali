.class public final Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;
.super Ljava/lang/Object;
.source "CpuPowerStatsProcessor.java"


# instance fields
.field public cumulativeTime:J

.field public cumulativeTimeByCluster:[J

.field public powerByCluster:[D

.field public powerByEnergyConsumer:[J

.field public powerByScalingStep:[D

.field public timeByCluster:[J

.field public timeByScalingStep:[J

.field public uptime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;-><init>()V

    return-void
.end method
