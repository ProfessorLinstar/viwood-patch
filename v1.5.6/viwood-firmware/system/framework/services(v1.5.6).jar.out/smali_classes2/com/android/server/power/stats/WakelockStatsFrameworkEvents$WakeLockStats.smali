.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# instance fields
.field public completedCount:J

.field public uptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 116
    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    .line 119
    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;-><init>()V

    return-void
.end method
