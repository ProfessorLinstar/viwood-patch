.class public Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;
.super Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.source "FaceServiceRegistry.java"


# instance fields
.field public final mService:Landroid/hardware/face/IFaceService;


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;Ljava/util/function/Supplier;)V
    .locals 0

    .line 49
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;-><init>(Ljava/util/function/Supplier;)V

    .line 50
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;->mService:Landroid/hardware/face/IFaceService;

    return-void
.end method


# virtual methods
.method public invokeRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-interface {p1, p2}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;->invokeRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
    .locals 0

    .line 38
    check-cast p2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;->registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/face/FaceSensorPropertiesInternal;)V

    return-void
.end method

.method public registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 4

    .line 56
    iget v0, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    .line 57
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v0

    .line 59
    :try_start_0
    iget v1, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;->mService:Landroid/hardware/face/IFaceService;

    iget v3, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;I)V

    const/16 p0, 0x8

    invoke-interface {p1, v1, p0, v0, v2}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 62
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Remote exception when registering sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceServiceRegistry"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
