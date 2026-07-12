.class public interface abstract Lcom/android/server/power/Notifier$Injector;
.super Ljava/lang/Object;
.source "Notifier.java"


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
.end method

.method public abstract getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
.end method

.method public abstract getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;
.end method

.method public abstract getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;
.end method
