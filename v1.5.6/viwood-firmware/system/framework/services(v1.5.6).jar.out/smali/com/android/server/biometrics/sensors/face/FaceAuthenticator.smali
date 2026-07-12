.class public final Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FaceAuthenticator.java"


# instance fields
.field public final mFaceService:Landroid/hardware/face/IFaceService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 42
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public dumpSensorServiceStateProto(Z)[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->dumpSensorServiceStateProto(IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public getAuthenticatorId(I)J
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLockoutModeForUser(I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 1

    move-object p12, p0

    .line 68
    iget-object p0, p12, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    .line 70
    invoke-virtual {v0, p5}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p5

    iget p12, p12, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 71
    invoke-virtual {p5, p12}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p5

    .line 72
    invoke-virtual {p5, p7}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p5

    .line 73
    invoke-virtual {p5, p13}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p5

    .line 74
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    move-result-object p5

    move-object p7, p6

    move-object p6, p5

    move-object p5, p7

    move-wide p7, p8

    move p9, p10

    move p10, p11

    .line 68
    invoke-interface/range {p0 .. p10}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v1, p1

    move-object v5, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public startPreparedClient(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(II)V

    return-void
.end method
