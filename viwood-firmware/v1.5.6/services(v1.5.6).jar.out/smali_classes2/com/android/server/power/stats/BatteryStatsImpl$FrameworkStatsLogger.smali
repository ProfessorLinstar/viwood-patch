.class public Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batteryLevelChanged(I)V
    .locals 0

    const/16 p0, 0x1e

    .line 2122
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public batterySaverModeChanged(Z)V
    .locals 0

    const/16 p0, 0x14

    .line 2099
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public chargingStateChanged(I)V
    .locals 0

    const/16 p0, 0x1f

    .line 2114
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public deviceIdleModeStateChanged(I)V
    .locals 0

    const/16 p0, 0x15

    .line 2110
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public deviceIdlingModeStateChanged(I)V
    .locals 0

    const/16 p0, 0x16

    .line 2106
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public gpsScanStateChanged(ILandroid/os/WorkSource$WorkChain;Z)V
    .locals 0

    const/4 p0, 0x6

    if-eqz p2, :cond_0

    .line 2091
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object p2

    .line 2090
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2093
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void
.end method

.method public kernelWakeupReported(JLjava/lang/String;J)V
    .locals 2

    const/16 p0, 0x24

    move-wide v0, p1

    move-object p1, p3

    move-wide p2, v0

    .line 2081
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJ)V

    return-void
.end method

.method public phoneServiceStateChanged(III)V
    .locals 0

    const/16 p0, 0x5e

    .line 2126
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public phoneSignalStrengthChanged(I)V
    .locals 0

    const/16 p0, 0x28

    .line 2131
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public pluggedStateChanged(I)V
    .locals 0

    const/16 p0, 0x20

    .line 2118
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public uidProcessStateChanged(II)V
    .locals 0

    const/16 p0, 0x1b

    .line 2062
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result p2

    .line 2061
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public wakelockStateChanged(ILandroid/os/WorkSource$WorkChain;Ljava/lang/String;IZI)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2071
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object p1

    .line 2072
    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object p2

    const/16 p0, 0xa

    move v7, p4

    move-object p4, p3

    move p3, p6

    move p6, v7

    .line 2071
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;II)V

    return-void

    :cond_0
    move v7, p4

    move-object p4, p3

    move p3, p6

    move p6, v7

    const/16 v0, 0xa

    const/4 v2, 0x0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 2074
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public writeCommitSysConfigFile(Ljava/lang/String;J)V
    .locals 0

    .line 2139
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    return-void
.end method
