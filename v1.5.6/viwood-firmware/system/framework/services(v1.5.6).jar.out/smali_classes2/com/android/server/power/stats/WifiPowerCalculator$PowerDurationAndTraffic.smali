.class public Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;
.super Ljava/lang/Object;
.source "WifiPowerCalculator.java"


# instance fields
.field public durationMs:J

.field public keys:[Landroid/os/BatteryConsumer$Key;

.field public powerMah:D

.field public powerPerKeyMah:[D

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/WifiPowerCalculator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;-><init>()V

    return-void
.end method
