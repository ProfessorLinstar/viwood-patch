.class public Lcom/android/server/power/stats/UsageBasedPowerEstimator;
.super Ljava/lang/Object;
.source "UsageBasedPowerEstimator.java"


# instance fields
.field public final mAveragePowerMahPerMs:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p1, v0

    .line 32
    iput-wide p1, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    return-void
.end method


# virtual methods
.method public calculateDuration(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 43
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public calculatePower(J)D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p0, p1

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public isSupported()Z
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
