.class public Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;
.super Ljava/lang/Object;
.source "BluetoothPowerStatsCollector.java"


# instance fields
.field public lastRxCount:J

.field public lastScanTime:J

.field public lastTxCount:J

.field public rxCount:J

.field public scanTime:J

.field public txCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;-><init>()V

    return-void
.end method
