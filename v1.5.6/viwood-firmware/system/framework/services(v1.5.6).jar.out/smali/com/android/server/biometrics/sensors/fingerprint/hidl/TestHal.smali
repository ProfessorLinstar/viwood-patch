.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;
.source "TestHal.java"


# instance fields
.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .locals 0

    .line 138
    const-string p0, "fingerprint.hidl.TestHal"

    const-string p1, "Authenticate"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()I
    .locals 4

    .line 95
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    .line 96
    invoke-interface {p0, v1, v2, v3, v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(JII)V

    :cond_0
    return v0
.end method

.method public enroll([BII)I
    .locals 0

    .line 79
    const-string p0, "fingerprint.hidl.TestHal"

    const-string p1, "enroll"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enumerate()I
    .locals 8

    .line 103
    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 105
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnumerate(JIII)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthenticatorId()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isUdfps(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onFingerDown(IIFF)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFingerUp()V
    .locals 0

    .line 0
    return-void
.end method

.method public postEnroll()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public preEnroll()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(II)I
    .locals 9

    .line 113
    const-string v0, "fingerprint.hidl.TestHal"

    const-string v1, "Remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 117
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p2, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    move v1, v0

    .line 119
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 120
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 121
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 122
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v8, v2, -0x1

    const-wide/16 v4, 0x0

    move v7, p1

    .line 121
    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    move v6, v7

    add-int/lit8 v1, v1, 0x1

    move p1, v6

    goto :goto_0

    :cond_0
    move v6, p1

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p2

    .line 125
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(JIII)V

    :cond_1
    return v0
.end method

.method public setActiveGroup(ILjava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 p0, 0x0

    return-wide p0
.end method
