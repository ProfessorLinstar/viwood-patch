.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"


# virtual methods
.method public abstract acquireWakeLock()V
.end method

.method public abstract addDebugLogEntry(Ljava/lang/String;)V
.end method

.method public abstract dumpDebugLog(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract elapsedRealtimeMillis()J
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract runAsync(Ljava/lang/Runnable;)V
.end method

.method public abstract setSystemClock(JILjava/lang/String;)V
.end method

.method public abstract setSystemClockConfidence(ILjava/lang/String;)V
.end method

.method public abstract systemClockConfidence()I
.end method

.method public abstract systemClockMillis()J
.end method
