.class public Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GnssTimeUpdateService.java"


# instance fields
.field public mService:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningInternal()Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .line 74
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GnssTimeUpdateService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 75
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    .line 76
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/location/LocationManager;

    .line 77
    const-class v0, Landroid/location/LocationManagerInternal;

    .line 78
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/LocationManagerInternal;

    .line 79
    const-class v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 80
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 82
    new-instance v2, Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/timedetector/GnssTimeUpdateService;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V

    iput-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 84
    const-string v0, "gnss_time_update_service"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
