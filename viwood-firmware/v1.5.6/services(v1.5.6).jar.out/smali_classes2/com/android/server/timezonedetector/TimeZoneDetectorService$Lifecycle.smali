.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeZoneDetectorService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .line 80
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 84
    invoke-static {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    move-result-object v2

    .line 88
    invoke-static {v0, v1}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->create(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/timezonedetector/DeviceActivityMonitor;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    invoke-interface {v3, v4}, Lcom/android/server/timezonedetector/DeviceActivityMonitor;->addListener(Lcom/android/server/timezonedetector/DeviceActivityMonitor$Listener;)V

    .line 99
    sget-object v4, Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    .line 101
    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    .line 103
    const-class v4, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 107
    sget-object v4, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 108
    new-instance v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    .line 112
    invoke-virtual {v5, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->addDumpable(Lcom/android/server/timezonedetector/Dumpable;)V

    .line 114
    const-string/jumbo v0, "time_zone_detector"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
