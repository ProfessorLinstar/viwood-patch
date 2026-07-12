.class public Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;
.super Ljava/lang/Object;
.source "GnssManagerService.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;


# instance fields
.field public mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public static synthetic $r8$lambda$2owXT7etoTw1nBlu35qII2eupJI(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofencePauseStatus$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$74HUUdWklDXFQXHdlQf84aSx3-M(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceResumeStatus$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMo6hGAeFF59sUBZjZibwlRVVpY(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceRemoveStatus$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGdYuzeCtBmKAb4ypcbn5fc0-Q8(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceStatus$1(ILandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwvRX_GuOMN3u5n5yf43jnP-gIo(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceAddStatus$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRA6xcVsmGjSVAfLK3HHR752yr8(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->lambda$onReportGeofenceTransition$0(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 1

    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 402
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$onReportGeofenceAddStatus$2(II)V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 432
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 431
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method public final synthetic lambda$onReportGeofencePauseStatus$4(II)V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 444
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 443
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method public final synthetic lambda$onReportGeofenceRemoveStatus$3(II)V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 438
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 437
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method public final synthetic lambda$onReportGeofenceResumeStatus$5(II)V
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 450
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result p0

    .line 449
    invoke-virtual {v0, p1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method public final synthetic lambda$onReportGeofenceStatus$1(ILandroid/location/Location;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object p0

    sget v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    return-void
.end method

.method public final synthetic lambda$onReportGeofenceTransition$0(ILandroid/location/Location;IJ)V
    .locals 8

    .line 408
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    const/4 v6, 0x0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method

.method public onReportGeofenceAddStatus(II)V
    .locals 2

    .line 431
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReportGeofencePauseStatus(II)V
    .locals 2

    .line 443
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReportGeofenceRemoveStatus(II)V
    .locals 2

    .line 437
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReportGeofenceResumeStatus(II)V
    .locals 2

    .line 449
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReportGeofenceStatus(ILandroid/location/Location;)V
    .locals 2

    .line 416
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 8

    .line 408
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final translateGeofenceStatus(I)I
    .locals 0

    .line 0
    const/16 p0, -0x95

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p0, 0x64

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
