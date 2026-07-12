.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;
.super Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.source "AidlResponseHandler.java"


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

.field public final mContext:Landroid/content/Context;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0gbCsAk06ZULzasyP9fGHei9YqY(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 233
    array-length p1, p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p3, p0, p1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1CnXY_UtDpe1OXC4l2wbghIh5dk(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$handleResponse$20(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$28RAQo1lWTUB-4BoqPBPebWKxMw(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Hqi0iJFFkhaaj-bmtku_3wqokQ(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onLockoutChanged$19(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay8_VmKwbe21S3wxdRFvX-uvrTw(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEae8ZphlmOl3n33QjMvIBJeOd8(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPZVomc-TsUv8oPTWqJRPNHePJo(Landroid/hardware/face/Face;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJqAtHAO1sAJ8HoUMcR-C0QqWbY(Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;)V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->onFeatureSet(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NW6hyQNngRK8IwEQRxH3ChDkFnQ(Landroid/hardware/biometrics/face/EnrollmentFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    if-nez p0, :cond_0

    .line 141
    const-string p0, "AidlResponseHandler"

    const-string p1, "Received null enrollment frame for face enroll client."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QF83JYjDjolHkowMrLXV5XNE-Mo(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 285
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Slz3Vvzcu-eOR7TsJCT0QvS26K0(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-myBNGfhWcUy8BDk69tvKhWxNQ(Landroid/hardware/face/Face;[IILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 260
    array-length p1, p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p3, p0, p1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7K_BsIF1n7FggRN_unuSxBcyy4(Landroid/hardware/biometrics/face/AuthenticationFrame;Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    if-nez p0, :cond_0

    .line 130
    const-string p0, "AidlResponseHandler"

    const-string p1, "Received null enrollment frame for face authentication client."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmkUriCWl17aIQ7o-YQ61sQ5Zmk(JLcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;)V
    .locals 0

    .line 277
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_6owfz4ghJTa36StgpISWG8tiA(JLcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;)V
    .locals 0

    .line 271
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$iId0imr_aEB7ndbttpp0lLsmkNM([BLcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;)V
    .locals 1

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p1, v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->onFeatureGet(Z[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJFvIK43YWd6HYhViabb2eNKAUo(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3ZpbjO5-QyadcQQaQ-StXkyqTk(Landroid/hardware/face/Face;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 193
    invoke-interface {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYDjGT_S1VyOAkKtupvtOJKzBSM(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onEnrollmentProgress$5(Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7Bwx-vmwy2K5YB7bDZAd2wz48s(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->lambda$onLockoutCleared$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrEhMdT1KoD3DRTFLOClafsIdI0(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0

    .line 206
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 95
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    .line 96
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 98
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 99
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 100
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 101
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 111
    const-string p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleResponse$20(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 328
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 329
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 332
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current client is not an instance of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AidlResponseHandler"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 334
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method public final synthetic lambda$onChallengeRevoked$1(JLcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;)V
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    return-void
.end method

.method public final synthetic lambda$onEnrollmentProgress$5(Landroid/hardware/face/Face;ILcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .locals 0

    .line 178
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p2, :cond_0

    .line 180
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 158
    invoke-interface {p3, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onLockoutChanged$19(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    .line 302
    :goto_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    invoke-interface {p2, v1, p1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    if-nez v0, :cond_3

    .line 305
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    :cond_3
    return-void
.end method

.method public final synthetic lambda$onLockoutCleared$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 8

    .line 217
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 219
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v5

    const-wide/16 v6, -0x1

    .line 217
    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 2

    .line 285
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .line 199
    new-instance v0, Landroid/hardware/face/Face;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 200
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/Face;)V

    const-class v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .locals 2

    .line 128
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;-><init>(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 4

    .line 187
    new-instance v0, Landroid/hardware/face/Face;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 188
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    .line 189
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 191
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    invoke-direct {p1, v0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Landroid/hardware/face/Face;Ljava/util/ArrayList;)V

    const-class p2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .locals 2

    .line 277
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .locals 2

    .line 271
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 2

    .line 116
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 2

    .line 122
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .locals 2

    .line 139
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    new-instance v1, Landroid/hardware/face/Face;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v2, v2

    invoke-direct {v1, v0, p1, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 177
    const-class p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Landroid/hardware/face/Face;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .locals 7

    .line 229
    array-length v0, p1

    const-class v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 230
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 231
    new-instance v2, Landroid/hardware/face/Face;

    aget v3, p1, v0

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 233
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;-><init>(Landroid/hardware/face/Face;[II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 237
    :cond_1
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .locals 7

    .line 255
    array-length v0, p1

    const-class v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 256
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 257
    new-instance v2, Landroid/hardware/face/Face;

    aget v3, p1, v0

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 259
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/face/Face;[II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 264
    :cond_1
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(BI)V
    .locals 0

    .line 150
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 157
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;II)V

    const-class p1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFeatureSet(B)V
    .locals 1

    .line 250
    const-class p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFeaturesRetrieved([B)V
    .locals 2

    .line 244
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onInteractionDetected()V
    .locals 2

    .line 224
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutChanged(J)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutCleared()V
    .locals 3

    .line 216
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutPermanent()V
    .locals 2

    .line 211
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 1

    .line 206
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;-><init>(J)V

    const-class p1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSessionClosed()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnsupportedClientScheduled()V
    .locals 2

    .line 315
    const-string v0, "AidlResponseHandler"

    const-string v1, "FaceInvalidationClient is not supported in the HAL."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method
