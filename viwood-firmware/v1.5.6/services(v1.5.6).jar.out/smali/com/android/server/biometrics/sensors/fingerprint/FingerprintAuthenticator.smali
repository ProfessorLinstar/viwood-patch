.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FingerprintAuthenticator.java"


# instance fields
.field public final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 42
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public dumpSensorServiceStateProto(Z)[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->dumpSensorServiceStateProto(IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public getAuthenticatorId(I)J
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLockoutModeForUser(I)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 1

    move-object p1, p0

    .line 68
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    iget p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 70
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1, p7}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p13}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object p5

    move-object p1, p2

    move-wide p2, p3

    move-object p4, p6

    move-wide p6, p8

    move p8, p10

    move p9, p11

    move p10, p12

    .line 68
    invoke-interface/range {p0 .. p10}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v1, p1

    move-object v5, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public startPreparedClient(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(II)V

    return-void
.end method
