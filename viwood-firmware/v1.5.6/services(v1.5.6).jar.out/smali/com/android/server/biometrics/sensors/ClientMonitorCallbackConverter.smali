.class public Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
.super Ljava/lang/Object;
.source "ClientMonitorCallbackConverter.java"


# instance fields
.field public final mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 57
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 62
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method


# virtual methods
.method public getModality()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAcquired(III)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAcquired(III)V

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 86
    invoke-interface {p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(II)V

    return-void

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 88
    invoke-interface {p0, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    :cond_2
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationFailed(I)V

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 109
    invoke-interface {p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    return-void

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 111
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V

    :cond_2
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p3}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationSucceeded(I[B)V

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 97
    check-cast p2, Landroid/hardware/face/Face;

    invoke-interface {p1, p2, p4, p5}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 100
    check-cast p2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    :cond_2
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onChallengeGenerated(IIJ)V

    return-void

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 162
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onChallengeGenerated(IIJ)V

    :cond_1
    return-void
.end method

.method public onDetected(IIZ)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFaceDetected(IIZ)V

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 133
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onFingerprintDetected(IIZ)V

    :cond_1
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(Landroid/hardware/face/Face;I)V

    return-void

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 142
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_1
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    :cond_0
    return-void
.end method

.method public onError(IIII)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    return-void

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 122
    invoke-interface {p0, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    :cond_2
    return-void
.end method

.method public onFeatureGet(Z[I[Z)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(Z[I[Z)V

    :cond_0
    return-void
.end method

.method public onFeatureSet(ZI)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 168
    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V

    :cond_0
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    return-void

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 152
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_1
    return-void
.end method

.method public onUdfpsOverlayShown()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_0

    .line 195
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsOverlayShown()V

    :cond_0
    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V

    :cond_0
    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V

    :cond_0
    return-void
.end method
