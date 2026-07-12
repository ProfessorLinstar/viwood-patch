.class public Lcom/android/server/am/OomAdjuster$Injector;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batchSetOomAdj(Ljava/util/ArrayList;)V
    .locals 0

    .line 468
    invoke-static {p1}, Lcom/android/server/am/ProcessList;->batchSetOomAdj(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getElapsedRealtimeMillis()J
    .locals 2

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUptimeMillis()J
    .locals 2

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 0

    .line 455
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 456
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public setOomAdj(III)V
    .locals 0

    .line 472
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    return-void
.end method

.method public setThreadPriority(II)V
    .locals 0

    .line 476
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method
