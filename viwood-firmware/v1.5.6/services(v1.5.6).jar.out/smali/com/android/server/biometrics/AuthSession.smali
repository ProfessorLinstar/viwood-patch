.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAuthenticatedSensorId:I

.field public mAuthenticatedTimeMs:J

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field final mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public mCancelled:Z

.field public final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field public final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mDebugEnabled:Z

.field public mErrorEscrow:I

.field public final mFingerprintSensorProperties:Ljava/util/List;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final mOperationId:J

.field public final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestId:J

.field final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field public mSensors:[I

.field public final mSfpsSensorIds:Ljava/util/List;

.field public mStartTimeMs:J

.field public mState:I

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field public mTokenEscrow:[B

.field public final mUserId:I

.field public mVendorCodeEscrow:I


# direct methods
.method public static synthetic $r8$lambda$2M4LopX4Ez2rKcMHs76UjWeEzSc(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 1

    .line 393
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ChHPsLtcbiJMupuEDhJZUfAZROQ(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 678
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ID5A6A-jPDHI5JoGe-udE9UUIvk(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 1

    .line 397
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M7eQp7jg92vLYvWd3vPSSiGJwBo(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 719
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bXUoZ1akYP8TSERLcQsRxOhHGpg(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 416
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$g8qp1XVNJHFOHIT4_u_o6wyL8I0(Lcom/android/server/biometrics/AuthSession;ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthSession;->lambda$onAuthenticationSucceeded$5(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kXVbxXAD3wv3_6Jp9ulzyk5Wb2k(Lcom/android/server/biometrics/AuthSession;ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthSession;->lambda$onErrorReceived$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pscd1KBAusTe8AFE4gvOAKtBqfE(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Ljava/lang/Integer;
    .locals 0

    .line 230
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V
    .locals 22

    .line 180
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    .line 177
    invoke-direct/range {v0 .. v21}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStoreAuthorization;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JJI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AuthSession with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 206
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 207
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 208
    iput-object p5, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 209
    iput-object p6, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    .line 210
    iput-object p7, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 211
    iput-object p8, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 212
    iput-object p9, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 213
    iput-wide p10, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide p2, p12

    .line 214
    iput-wide p2, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 p2, p14

    .line 215
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 p2, p15

    .line 216
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 p2, p16

    .line 217
    iput-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-object/from16 p3, p17

    .line 218
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 p3, p18

    .line 219
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 p3, p19

    .line 220
    iput-boolean p3, p0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    move-object/from16 p3, p20

    .line 221
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    .line 222
    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    move-object/from16 p4, p21

    .line 223
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 224
    new-instance p4, Lcom/android/server/biometrics/log/OperationContextExt;

    const/4 p5, 0x1

    .line 225
    invoke-virtual {p8}, Lcom/android/server/biometrics/PreAuthInfo;->getIsMandatoryBiometricsAuthentication()Z

    move-result p6

    invoke-direct {p4, p5, p6}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(ZZ)V

    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 226
    const-class p4, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 228
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>()V

    .line 229
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 230
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    .line 233
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    const-string p1, "Unable to link to death"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    return-void
.end method


# virtual methods
.method public allCookiesReceived()Z
    .locals 2

    .line 977
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result p0

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remaining cookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public binderDied()V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {p0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    return-void
.end method

.method public final cancelAllSensors()V
    .locals 1

    .line 416
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final cancelAllSensors(Ljava/util/function/Function;)V
    .locals 7

    .line 424
    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 426
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    const-string v2, "Unable to cancel authentication"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final containsCookie(I)Z
    .locals 1

    .line 963
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 964
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getAcquiredMessageForSensor(III)Ljava/lang/String;
    .locals 1

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1045
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEligibleModalities()I
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result p0

    return p0
.end method

.method public getRequestId()J
    .locals 2

    .line 987
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    return-wide v0
.end method

.method public getState()I
    .locals 0

    .line 983
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return p0
.end method

.method public final getStatsClient()I
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public goToInitialState()V
    .locals 15

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 299
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 300
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 302
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v9, v0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v10, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v12, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v13, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    const/4 v0, 0x1

    .line 315
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void

    .line 319
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No authenticators requested"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAuthenticated()Z
    .locals 1

    .line 759
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasAuthenticatedAndConfirmed()Z
    .locals 2

    .line 763
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAllowDeviceCredential()Z
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method public final isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .locals 1

    .line 378
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 379
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isConfirmationRequiredByAnyEligibleSensor()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 385
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCrypto()Z
    .locals 4

    .line 959
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onAuthenticationSucceeded$5(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 676
    iget p2, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onErrorReceived$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToStrength(I)I

    move-result p0

    .line 466
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p1

    .line 465
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final logOnDialogDismissed(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    .line 767
    const-string v3, ", SessionId: "

    const-string v4, ", Latency: "

    const/4 v5, 0x3

    const-string v6, ", Client: "

    const-string v7, ", IsCrypto: "

    const-string v8, ", User: "

    const-string v9, "BiometricService/AuthSession"

    if-ne v1, v2, :cond_0

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v10, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long/2addr v1, v10

    .line 774
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Confirmed! Modality: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", RequireConfirmation: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v6, v6, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", State: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 781
    invoke-virtual {v3}, Lcom/android/server/biometrics/log/OperationContextExt;->getId()I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v12, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 786
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v14

    .line 788
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v16

    iget-boolean v3, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/high16 v23, -0x40800000    # -1.0f

    const/4 v15, 0x0

    const/16 v20, 0x3

    move/from16 v22, v0

    move-wide/from16 v18, v1

    move/from16 v17, v3

    move/from16 v21, v4

    .line 784
    invoke-virtual/range {v12 .. v23}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZIF)V

    return-void

    .line 796
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long/2addr v10, v12

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x16

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    goto :goto_0

    :cond_3
    const/16 v5, 0xd

    .line 813
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dismissed! Modality: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Action: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Error: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 821
    invoke-virtual {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->getId()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    .line 825
    iget-object v14, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v15, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 827
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v16

    .line 829
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getStatsClient()I

    move-result v18

    iget-boolean v1, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/16 v23, 0x0

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/16 v17, 0x2

    move/from16 v24, v0

    move/from16 v19, v1

    move/from16 v22, v5

    move-wide/from16 v20, v10

    .line 825
    invoke-virtual/range {v14 .. v24}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    :cond_4
    return-void
.end method

.method public onAcquired(III)V
    .locals 4

    .line 552
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 553
    const-string/jumbo p0, "onAcquired after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " acquiredInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p1

    invoke-interface {v2, p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(ILjava/lang/String;)V

    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    add-int/lit16 p2, p3, 0x3e8

    .line 568
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, p2, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAcquired(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 570
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAuthenticationRejected(I)V
    .locals 5

    .line 683
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 684
    const-string/jumbo p0, "onAuthenticationRejected after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 689
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 692
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 694
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 696
    :goto_1
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onAuthenticationSucceeded(IZ[B)V
    .locals 4

    .line 642
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 643
    const-string/jumbo p0, "onAuthenticationSucceeded after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 647
    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    if-eqz p2, :cond_1

    .line 649
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 652
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p2, 0x6

    .line 659
    :try_start_0
    iget-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(I)V

    .line 661
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x7

    .line 664
    iput p3, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_1

    .line 666
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 667
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 670
    :goto_1
    const-string v0, "RemoteException"

    invoke-static {v1, v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    :goto_2
    iget p3, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    if-ne p3, p2, :cond_4

    .line 675
    new-instance p2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/AuthSession;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    goto :goto_3

    .line 678
    :cond_4
    new-instance p2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    :goto_3
    return-void
.end method

.method public onAuthenticationTimedOut(IIII)V
    .locals 2

    .line 701
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result p2

    const-string v0, "BiometricService/AuthSession"

    if-eqz p2, :cond_0

    .line 702
    const-string/jumbo p0, "onAuthenticationTimedOut after successful auth"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 707
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    invoke-interface {p2, v1, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    const/4 p1, 0x4

    .line 709
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 711
    const-string p1, "RemoteException"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCancelAuthSession(Z)Z
    .locals 6

    .line 923
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 924
    const-string/jumbo p0, "onCancelAuthSession after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 928
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 930
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 934
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    return v3

    .line 944
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 945
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v0

    const/4 v4, 0x5

    .line 944
    invoke-interface {p1, v0, v4, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 949
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {p1, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 952
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public onClientDied()Z
    .locals 4

    const/4 v0, 0x1

    .line 742
    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 745
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 746
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    .line 753
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onCookieReceived(I)V
    .locals 14

    .line 324
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received cookie but already cancelled (ignoring): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const-string/jumbo p0, "onCookieReceived after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 334
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 342
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensorsExceptFingerprint()V

    .line 345
    iget p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v7

    .line 350
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p1, p1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    const/4 p1, 0x0

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 358
    invoke-virtual {p1}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v6

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v8, p1, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v11, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 355
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    const/4 p1, 0x2

    .line 364
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 366
    :goto_2
    const-string p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    const/4 p1, 0x3

    .line 370
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void

    .line 373
    :cond_5
    const-string/jumbo p0, "onCookieReceived: still waiting"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceCredentialPressed()V
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string p0, "BiometricService/AuthSession"

    const-string/jumbo v0, "onDeviceCredentialPressed after successful auth"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    const/16 v0, 0x9

    .line 734
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method public onDialogAnimatedIn(Z)V
    .locals 4

    .line 591
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    const-string v2, "BiometricService/AuthSession"

    const/4 v3, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    .line 598
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_1
    if-eqz p1, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    goto :goto_0

    .line 604
    :cond_2
    const-string p1, "delaying fingerprint sensor start"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/server/biometrics/log/BiometricContext;->updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .locals 8

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    const/4 v1, 0x0

    .line 843
    const-string v2, "BiometricService/AuthSession"

    packed-switch p1, :pswitch_data_0

    .line 894
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    .line 886
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 887
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    const/4 v0, 0x1

    .line 886
    invoke-interface {p1, p2, v0, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_2

    :pswitch_1
    if-eqz p2, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v0, p2}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    goto :goto_0

    .line 848
    :cond_0
    const-string p2, "credentialAttestation is null"

    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 879
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v3, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 878
    invoke-interface {p1, p2, v0, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_2

    .line 869
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 870
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    const/16 v0, 0xa

    .line 869
    invoke-interface {p1, p2, v0, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_2

    .line 865
    :pswitch_4
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto :goto_2

    .line 852
    :goto_0
    :pswitch_5
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p2, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v0, p2}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result p2

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAuthToken: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 856
    :cond_1
    const-string/jumbo p2, "mTokenEscrow is null"

    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_1
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 860
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result p1

    .line 859
    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :goto_2
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz p2, :cond_3

    .line 901
    array-length p1, p1

    new-array v7, p1, [B

    .line 902
    :goto_3
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length p2, p1

    if-ge v1, p2, :cond_2

    .line 903
    aget-byte p1, p1, v1

    aput-byte p1, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 905
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 905
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 911
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    return-void

    .line 898
    :goto_4
    :try_start_1
    const-string p2, "Remote exception"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz p2, :cond_5

    .line 901
    array-length p1, p1

    new-array v7, p1, [B

    .line 902
    :goto_5
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length p2, p1

    if-ge v1, p2, :cond_4

    .line 903
    aget-byte p1, p1, v1

    aput-byte p1, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 905
    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 905
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 911
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    return-void

    .line 900
    :goto_6
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v0, :cond_7

    .line 901
    array-length p2, p2

    new-array v7, p2, [B

    .line 902
    :goto_7
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length v0, p2

    if-ge v1, v0, :cond_6

    .line 903
    aget-byte p2, p2, v1

    aput-byte p2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 905
    :cond_6
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 906
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 905
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 911
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 912
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorReceived(IIII)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onErrorReceived sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown/expired cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 450
    :cond_0
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    .line 451
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 452
    invoke-virtual {v8, v2, v3}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    const-string/jumbo v0, "onErrorReceived after successful auth (ignoring)"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    const/4 v2, 0x7

    const/16 v5, 0x9

    const/4 v8, 0x1

    if-eq v3, v2, :cond_5

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v8

    :goto_2
    if-eqz v2, :cond_6

    .line 465
    new-instance v10, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/AuthSession;I)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 469
    :cond_6
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 470
    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 472
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    .line 474
    iget v10, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    if-eq v10, v8, :cond_d

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    if-eq v10, v9, :cond_a

    const/4 v9, 0x4

    if-eq v10, v9, :cond_9

    const/4 v9, 0x6

    if-eq v10, v9, :cond_a

    if-eq v10, v5, :cond_8

    const/16 v1, 0xa

    if-eq v10, v1, :cond_7

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error state, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 540
    :cond_7
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v8

    .line 536
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Biometric canceled, ignoring from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 530
    :cond_9
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 531
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    return v8

    .line 508
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v2, :cond_b

    .line 510
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 511
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_3

    :cond_b
    const/4 v2, 0x5

    if-ne v3, v2, :cond_c

    .line 513
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-interface {v2, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog(J)V

    .line 517
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v8

    :cond_c
    const/16 v2, 0x8

    .line 520
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 521
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_3

    .line 478
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 479
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 480
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    .line 482
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v1

    .line 483
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 485
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 486
    new-array v11, v7, [I

    iput-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 488
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v14, v1, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v1, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-wide v15, v1

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    invoke-interface/range {v8 .. v19}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    :goto_3
    return v7

    .line 499
    :cond_e
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v8
.end method

.method public onStartFingerprint()V
    .locals 2

    .line 613
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartFingerprint, started from unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedFingerprintSensors()V

    return-void
.end method

.method public onSystemEvent(I)V
    .locals 2

    .line 575
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 576
    const-string/jumbo p0, "onSystemEvent after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 586
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTryAgainPressed()V
    .locals 3

    .line 625
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_0

    .line 626
    const-string/jumbo p0, "onTryAgainPressed after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 635
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final pauseSensorIfSupported(I)Z
    .locals 5

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToState(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 718
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    if-nez v0, :cond_1

    .line 719
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return v3

    :cond_1
    return v2
.end method

.method public final sensorIdToModality(I)I
    .locals 2

    .line 1009
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1010
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_0

    .line 1011
    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return p0

    .line 1014
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final sensorIdToState(I)I
    .locals 2

    .line 1019
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1020
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_0

    .line 1021
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result p0

    return p0

    .line 1024
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final sensorIdToStrength(I)I
    .locals 2

    .line 1030
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1031
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_0

    .line 1032
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    return p0

    .line 1035
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xfff

    return p0
.end method

.method public final setSensorsToStateUnknown()V
    .locals 3

    .line 260
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set to unknown state sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 269
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 270
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v2

    .line 271
    const-string v4, "BiometricService/AuthSession"

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip retry because sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 277
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 280
    :cond_1
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v5, 0x7ffffffe

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 281
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waiting for cooking for sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 288
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v14

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 289
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v15

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 290
    invoke-virtual {v4}, Lcom/android/server/biometrics/log/OperationContextExt;->getIsMandatoryBiometrics()Z

    move-result v16

    move v4, v2

    .line 286
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final startAllPreparedFingerprintSensors()V
    .locals 1

    .line 397
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final startAllPreparedSensors(Ljava/util/function/Function;)V
    .locals 5

    .line 401
    const-string v0, "BiometricService/AuthSession"

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 402
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start prepared client, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final startAllPreparedSensorsExceptFingerprint()V
    .locals 1

    .line 393
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final statsModality()I
    .locals 3

    .line 993
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 994
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
