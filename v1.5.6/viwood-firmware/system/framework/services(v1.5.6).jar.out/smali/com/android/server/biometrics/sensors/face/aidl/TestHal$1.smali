.class public Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "TestHal.java"


# instance fields
.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .locals 0

    .line 59
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 109
    const-string p1, "face.aidl.TestHal"

    const-string p2, "authenticate"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 2

    .line 190
    const-string v0, "face.aidl.TestHal"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    .line 128
    const-string v0, "face.aidl.TestHal"

    const-string v1, "detectInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 90
    const-string p1, "face.aidl.TestHal"

    const-string p2, "enroll"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 204
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    .line 219
    iget-object v0, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    iget-byte v1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    iget-object v2, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    iget-object p1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .locals 2

    .line 147
    const-string v0, "face.aidl.TestHal"

    const-string v1, "enumerateEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public generateChallenge()V
    .locals 2

    .line 72
    const-string v0, "face.aidl.TestHal"

    const-string v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public getAuthenticatorId()V
    .locals 2

    .line 172
    const-string v0, "face.aidl.TestHal"

    const-string v1, "getAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    const/4 p0, 0x0

    .line 84
    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object p0
.end method

.method public getFeatures()V
    .locals 2

    .line 159
    const-string v0, "face.aidl.TestHal"

    const-string v1, "getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 67
    const-string p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public invalidateAuthenticatorId()V
    .locals 2

    .line 178
    const-string v0, "face.aidl.TestHal"

    const-string v1, "invalidateAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 214
    const-string p0, "face.aidl.TestHal"

    const-string/jumbo p1, "onContextChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .locals 2

    .line 153
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    .line 184
    const-string p1, "face.aidl.TestHal"

    const-string/jumbo v0, "resetLockout"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public revokeChallenge(J)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    .line 166
    const-string p1, "face.aidl.TestHal"

    const-string/jumbo p3, "setFeature"

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    return-void
.end method
