.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeDetectorService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .line 79
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 83
    invoke-static {v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;

    move-result-object v4

    .line 85
    invoke-static {v1, v2, v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;

    move-result-object v5

    .line 88
    sget-object v3, Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    .line 90
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;Lcom/android/server/timedetector/ServiceConfigAccessor;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    move-object v4, v5

    .line 93
    const-class v3, Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 96
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorService;

    .line 98
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timedetector/TimeDetectorStrategy;Landroid/util/NtpTrustedTime;)V

    .line 102
    const-string/jumbo v1, "time_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
