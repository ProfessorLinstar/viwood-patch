.class public final Lcom/android/server/biometrics/sensors/SensorOverlays;
.super Ljava/lang/Object;
.source "SensorOverlays.java"


# instance fields
.field public final mUdfpsOverlayController:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public hide(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 92
    const-string p1, "SensorOverlays"

    const-string v0, "Remote exception when hiding the UDFPS overlay"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 106
    const-string p1, "SensorOverlays"

    const-string v0, "Remote exception using overlay controller"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v6, Lcom/android/server/biometrics/sensors/SensorOverlays$1;

    invoke-direct {v6, p0, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays$1;-><init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 75
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    .line 74
    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 77
    const-string p1, "SensorOverlays"

    const-string p2, "Remote exception when showing the UDFPS overlay"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
