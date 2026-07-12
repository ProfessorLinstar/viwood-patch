.class public Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final rxConsumptionMah:D

.field public final rxDurationMs:J

.field public final txConsumptionMah:D

.field public final txDurationMs:J

.field public final txToTotalRatio:D


# direct methods
.method public constructor <init>(DJDJ)V
    .locals 0

    .line 13045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13046
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->rxConsumptionMah:D

    .line 13047
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->rxDurationMs:J

    .line 13048
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txConsumptionMah:D

    .line 13049
    iput-wide p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txDurationMs:J

    add-long/2addr p3, p7

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    .line 13053
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    return-void

    :cond_0
    long-to-double p1, p7

    long-to-double p3, p3

    div-double/2addr p1, p3

    .line 13055
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    return-void
.end method
