.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "BatteryStatsImpl.java"


# instance fields
.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mHandle:I

.field public mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;I)V
    .locals 0

    .line 10259
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    .line 10260
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10261
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 10262
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return-void
.end method


# virtual methods
.method public detachFromTimeBase()V
    .locals 0

    .line 10314
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getHandle()I
    .locals 0

    .line 10310
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return p0
.end method

.method public bridge synthetic getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 10245
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->getSensorBackgroundTime()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorBackgroundTime()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .locals 0

    .line 10302
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10305
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 10245
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->getSensorTime()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getSensorTime()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .locals 0

    .line 10297
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public reset(J)Z
    .locals 2

    .line 10280
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10281
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
