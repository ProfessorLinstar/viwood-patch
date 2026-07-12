.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "AidlResponseHandler.java"


# instance fields
.field public final mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

.field public final mContext:Landroid/content/Context;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$2W-w_jvjCRoxMWujuCeHMMYnEog(BILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 136
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result p0

    .line 135
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kh4u8a7gqQ0K8SECRM5iSHvgg8(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 0

    .line 241
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ETgoj_n-EtWBtqZ7JTH9nGXQ4E(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$7IMFVxacLbIkMz_KB0OV-QSfQEc(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onLockoutCleared$11(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2m9RNZJF14ZE7gkn1fZPSnuEtM(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;)V
    .locals 0

    .line 272
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dt_ki4suEcfGgwlp1SRUcmBPLt8(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-interface {p1, p0, v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-Kmp1it0EqXPzV4t0Mmg6l6JvU(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 0

    .line 249
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDmOixkm301gzlRJh0khlj5hfUM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$handleResponse$19(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWRkPJMm2Xngl62iBune8zdbmfI(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-interface {p2, p0, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tu6E1_jW0n_PaBet3cqxZp1F-w4(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 130
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQEScGrGcsXrFGzXOdW48BpN18Y(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationSucceeded$7(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iaAqL1fSVodgUwfRLP1-yXY3InQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jj7Ee5QTyq26PViiERuXRh9CZRo(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;)V
    .locals 0

    .line 267
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAOE08WdtRlmtibaQ9AnkCDHlhQ(JLcom/android/server/biometrics/sensors/LockoutConsumer;)V
    .locals 0

    .line 198
    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYPu2ppSZoAaM8TJVQmrIEuZbXU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onEnrollmentProgress$5(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngnX8YMOdPXHl1hiLGGY2JGHlrY(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoq4vWnjA9zOXZ35-DWtpei3OYA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->lambda$onAuthenticationFailed$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rSq7ywN9stqfs2kz4eGHJHe7LI8(Lcom/android/server/biometrics/sensors/EnumerateConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sC5AGoDUN7QZR6TicgHW3Cv5peE(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;)V
    .locals 0

    .line 122
    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->onChallengeRevoked(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0I9ifZpvPMko_RVyfrHllDw7zc(Lcom/android/server/biometrics/sensors/RemovalConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 259
    invoke-interface {p0, v0, v1}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 95
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    .line 96
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 98
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 99
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 100
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 101
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 111
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

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

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleResponse$19(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client monitor is not an instance of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AidlResponseHandler"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 299
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$onAuthenticationFailed$9(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onInteractionDetected()V

    return-void
.end method

.method public final synthetic lambda$onAuthenticationSucceeded$7(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onInteractionDetected()V

    return-void
.end method

.method public final synthetic lambda$onChallengeGenerated$0(JLcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method public final synthetic lambda$onEnrollmentProgress$5(Landroid/hardware/fingerprint/Fingerprint;ILcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;)V
    .locals 0

    .line 169
    invoke-virtual {p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p2, :cond_0

    .line 171
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onError$4(IILcom/android/server/biometrics/sensors/ErrorConsumer;)V
    .locals 0

    .line 144
    invoke-interface {p3, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onLockoutCleared$11(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 8

    .line 210
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 212
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v5

    const-wide/16 v6, -0x1

    .line 210
    invoke-static/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;IJ)V

    return-void
.end method

.method public onAcquired(BI)V
    .locals 2

    .line 135
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;-><init>(BI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 2

    .line 130
    const-class v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda16;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 5

    .line 190
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 191
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    const-class v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 4

    .line 178
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 179
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    .line 180
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 182
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;

    invoke-direct {p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/fingerprint/Fingerprint;Ljava/util/ArrayList;)V

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    const-class v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .locals 2

    .line 272
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda15;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .locals 2

    .line 266
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChallengeGenerated(J)V
    .locals 2

    .line 116
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChallengeRevoked(J)V
    .locals 2

    .line 122
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda12;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentEnumerated(II)V
    .locals 4

    .line 240
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 241
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;

    invoke-direct {p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda18;-><init>(Landroid/hardware/fingerprint/Fingerprint;I)V

    const-class p2, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    .line 165
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mBiometricUtils:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 166
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v5, v0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 168
    const-class p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentRemoved(II)V
    .locals 4

    .line 248
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mSensorId:I

    int-to-long v1, v1

    const-string v3, ""

    invoke-direct {v0, v3, p1, v1, v2}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 249
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/fingerprint/Fingerprint;I)V

    const-class p2, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .locals 3

    .line 224
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 225
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 226
    aget v1, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentEnumerated(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 230
    :cond_1
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda17;-><init>()V

    const-class v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .locals 3

    .line 254
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 255
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 256
    aget v1, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onEnrollmentRemoved(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 259
    :cond_1
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda7;-><init>()V

    const-class v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(BI)V
    .locals 0

    .line 153
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->onError(II)V

    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;II)V

    const-class p1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onInteractionDetected()V
    .locals 2

    .line 218
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutCleared()V
    .locals 3

    .line 208
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutPermanent()V
    .locals 2

    .line 203
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 1

    .line 198
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;-><init>(J)V

    const-class p1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSessionClosed()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnsupportedClientScheduled(Ljava/lang/Class;)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported in the HAL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AidlResponseHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method
