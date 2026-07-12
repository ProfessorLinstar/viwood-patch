.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# instance fields
.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 131
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 132
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 133
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 134
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 135
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 136
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 137
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 138
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .locals 2

    .line 204
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->useVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getVhal()Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;->setEnrollmentHit(I)V

    .line 208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->simulateVhalFingerDown(II)V

    return-void

    .line 213
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string p0, "fp/aidl/BiometricTestSessionImpl"

    const-string p1, "No fingerprints, returning"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    .line 220
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    const/16 p1, 0x45

    new-array p1, p1, [B

    .line 221
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    .line 220
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .locals 3

    .line 264
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInternalState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fp/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->useVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "cleanup virtualhal configurations"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getVhal()Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;->resetConfigurations()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .locals 6

    .line 166
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishEnroll(): useVhalForTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->useVhalForTesting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fp/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->useVhalForTesting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    new-array v2, v0, [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    new-instance v3, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    invoke-direct {v3}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;-><init>()V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    .line 172
    new-array v3, v3, [Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;

    new-instance v4, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;

    invoke-direct {v4}, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;

    invoke-direct {v4}, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;-><init>()V

    aput-object v4, v3, v0

    .line 174
    aget-object v1, v3, v1

    const/16 v5, 0x64

    iput v5, v1, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;->durationMs:I

    .line 175
    iput-object v2, v1, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;->acquiredInfoAndVendorCodes:[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    const/16 v1, 0xc8

    .line 176
    iput v1, v4, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;->durationMs:I

    .line 177
    iput-object v2, v4, Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;->acquiredInfoAndVendorCodes:[Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    .line 179
    new-instance v1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;-><init>()V

    const/16 v2, 0x270f

    .line 180
    iput v2, v1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->id:I

    .line 181
    iput-object v3, v1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->progressSteps:[Landroid/hardware/biometrics/fingerprint/virtualhal/EnrollmentProgressStep;

    .line 182
    iput-boolean v0, v1, Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;->result:Z

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getVhal()Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;->setNextEnrollment(Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->simulateVhalFingerDown(II)V

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public getSensorId()I
    .locals 0

    .line 300
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId_enforcePermission()V

    .line 301
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    return p0
.end method

.method public notifyAcquired(II)V
    .locals 0

    .line 244
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 246
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    int-to-byte p1, p2

    const/4 p2, 0x0

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAcquired(BI)V

    return-void
.end method

.method public notifyError(II)V
    .locals 0

    .line 254
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 256
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->useVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getVhal()Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;->setEnrollmentHit(I)V

    .line 232
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->simulateVhalFingerDown(II)V

    return-void

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 148
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .locals 9

    .line 155
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 157
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/16 v3, 0x45

    new-array v3, v3, [B

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;-><init>()V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    move-result-object v8

    const/4 v7, 0x2

    move v4, p1

    .line 157
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    return-void
.end method
