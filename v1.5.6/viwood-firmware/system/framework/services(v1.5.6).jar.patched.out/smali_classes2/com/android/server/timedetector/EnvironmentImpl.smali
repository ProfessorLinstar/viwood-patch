.class public final Lcom/android/server/timedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;


# instance fields
.field public final mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 51
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    .line 52
    const-string/jumbo v0, "time_detector"

    .line 53
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    const-class p1, Lcom/android/server/AlarmManagerInternal;

    .line 56
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerInternal;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public addDebugLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/android/server/SystemClockTime;->addDebugLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final checkWakeLockHeld()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not held"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "time_detector"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dumpDebugLog(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 116
    const-string v1, "elapsedRealtimeMillis()=%s (%s)\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockMillis()J

    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "systemClockMillis()=%s (%s)\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemClockConfidence()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string p0, "SystemClockTime debug log:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 125
    invoke-static {p1}, Lcom/android/server/SystemClockTime;->dump(Ljava/io/PrintWriter;)V

    .line 126
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 99
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public runAsync(Ljava/lang/Runnable;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSystemClock(JILjava/lang/String;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 87
    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerInternal;->setTime(JILjava/lang/String;)V

    return-void
.end method

.method public setSystemClockConfidence(ILjava/lang/String;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 93
    invoke-static {p1, p2}, Lcom/android/server/SystemClockTime;->setConfidence(ILjava/lang/String;)V

    return-void
.end method

.method public systemClockConfidence()I
    .locals 0

    .line 79
    invoke-static {}, Lcom/android/server/SystemClockTime;->getTimeConfidence()I

    move-result p0

    return p0
.end method

.method public systemClockMillis()J
    .locals 2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
