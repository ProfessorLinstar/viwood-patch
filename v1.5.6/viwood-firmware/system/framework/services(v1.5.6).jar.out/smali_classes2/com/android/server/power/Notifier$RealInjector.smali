.class public Lcom/android/server/power/Notifier$RealInjector;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/android/server/power/Notifier$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 1547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 0

    .line 1557
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .locals 0

    .line 1562
    const-class p0, Landroid/os/BatteryStatsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;
    .locals 0

    .line 1567
    new-instance p0, Lcom/android/server/power/FrameworkStatsLogger;

    invoke-direct {p0}, Lcom/android/server/power/FrameworkStatsLogger;-><init>()V

    return-object p0
.end method

.method public getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;
    .locals 0

    .line 1552
    new-instance p0, Lcom/android/server/power/WakeLockLog;

    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
