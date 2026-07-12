.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;
.super Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.source "HidlToAidlCallbackConverter.java"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onAcquired_2_2(JII)V

    return-void
.end method

.method public onAcquired_2_2(JII)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B

    const/4 p2, 0x0

    .line 60
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_0

    .line 61
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Byte;

    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    move-result p4

    aput-byte p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    .line 64
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onChallengeGenerated(J)V

    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onChallengeRevoked(J)V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public onEnumerate(JIII)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentEnumerated(II)V

    return-void
.end method

.method public onError(JII)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onError(II)V

    return-void
.end method

.method public onRemoved(JIII)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentRemoved(II)V

    return-void
.end method

.method public onResetLockout()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onLockoutCleared()V

    return-void
.end method

.method public unsupportedClientScheduled(Ljava/lang/Class;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onUnsupportedClientScheduled(Ljava/lang/Class;)V

    return-void
.end method
