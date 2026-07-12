.class public Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 71
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 137
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 138
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 139
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 140
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 141
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 142
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getVhal()Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object p0

    const/16 p1, 0x270f

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->setEnrollmentHit(I)V

    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const-string p0, "face/aidl/BiometricTestSessionImpl"

    const-string p1, "No faces, returning"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    .line 225
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    const/16 p1, 0x45

    new-array p1, p1, [B

    .line 226
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .locals 3

    .line 278
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInternalState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "cleanup virtualhal configurations"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getVhal()Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->resetConfigurations()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .locals 3

    .line 190
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public getSensorId()I
    .locals 0

    .line 314
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId_enforcePermission()V

    .line 315
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    return p0
.end method

.method public notifyAcquired(II)V
    .locals 1

    .line 246
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 248
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    int-to-byte p2, p2

    .line 249
    iput-byte p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 251
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p2

    instance-of p2, p2, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz p2, :cond_0

    .line 252
    new-instance p2, Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    .line 253
    iput-object v0, p2, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 254
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    return-void

    .line 257
    :cond_0
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 258
    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 259
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    return-void
.end method

.method public notifyError(II)V
    .locals 0

    .line 268
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 270
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(BI)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .locals 1

    .line 233
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 235
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getVhal()Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object p0

    const/16 p1, 0x2710

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->setEnrollmentHit(I)V

    return-void

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 152
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .locals 14

    .line 159
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startEnroll(): isVhalForTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isVhalForTesting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 163
    new-array v2, v0, [Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    new-instance v3, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    invoke-direct {v3}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;-><init>()V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    .line 165
    new-array v3, v3, [Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;

    new-instance v4, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;

    invoke-direct {v4}, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;

    invoke-direct {v4}, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;-><init>()V

    aput-object v4, v3, v0

    .line 167
    aget-object v5, v3, v1

    const/16 v6, 0x64

    iput v6, v5, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;->durationMs:I

    .line 168
    iput-object v2, v5, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;->acquiredInfoAndVendorCodes:[Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    const/16 v5, 0xc8

    .line 169
    iput v5, v4, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;->durationMs:I

    .line 170
    iput-object v2, v4, Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;->acquiredInfoAndVendorCodes:[Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    .line 172
    new-instance v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;

    invoke-direct {v2}, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;-><init>()V

    const/16 v4, 0x270f

    .line 173
    iput v4, v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;->id:I

    .line 174
    iput-object v3, v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;->progressSteps:[Landroid/hardware/biometrics/face/virtualhal/EnrollmentProgressStep;

    .line 175
    iput-boolean v0, v2, Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;->result:Z

    .line 176
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getVhal()Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->setNextEnrollment(Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getVhal()Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object v0

    const/16 v2, 0x1770

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->setOperationAuthenticateDuration(I)V

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v6, v0, [B

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [I

    new-instance p0, Landroid/hardware/face/FaceEnrollOptions$Builder;

    invoke-direct {p0}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V

    .line 183
    invoke-virtual {p0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v7, p1

    .line 180
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    return-void
.end method
