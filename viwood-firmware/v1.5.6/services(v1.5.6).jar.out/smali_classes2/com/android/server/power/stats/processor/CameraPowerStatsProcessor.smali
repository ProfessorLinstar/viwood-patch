.class public Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "CameraPowerStatsProcessor.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 26
    const-string v0, "camera.avg"

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const/4 p1, 0x3

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    return-void
.end method


# virtual methods
.method public getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    .line 32
    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
