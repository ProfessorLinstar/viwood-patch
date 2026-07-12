.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# instance fields
.field public acquireUptimeMillis:J

.field public refCount:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 133
    iput-wide p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    return-void
.end method
