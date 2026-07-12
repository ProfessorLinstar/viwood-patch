.class public abstract Lcom/android/server/biometrics/BiometricSensor;
.super Ljava/lang/Object;
.source "BiometricSensor.java"


# instance fields
.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field public final mContext:Landroid/content/Context;

.field public mCookie:I

.field public mError:I

.field public mSensorState:I

.field public mUpdatedStrength:I

.field public final modality:I

.field public final oemStrength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mContext:Landroid/content/Context;

    .line 92
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 93
    iput p3, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 94
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 95
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 97
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    return-void
.end method


# virtual methods
.method public abstract confirmationAlwaysRequired(I)Z
.end method

.method public abstract confirmationSupported()Z
.end method

.method public getCookie()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    return p0
.end method

.method public getCurrentStrength()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getSensorState()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return p0
.end method

.method public goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 2

    .line 134
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 136
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_0
    return-void
.end method

.method public goToStateCookieReturnedIfCookieMatches(I)V
    .locals 2

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") matched cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService/Sensor"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 123
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_0
    return-void
.end method

.method public goToStateUnknown()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 103
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 104
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    return-void
.end method

.method public goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 14

    move/from16 v10, p10

    .line 112
    iput v10, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    const/4 p1, 0x1

    .line 117
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return-void
.end method

.method public goToStoppedStateIfCookieMatches(II)V
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sensor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") now in STATE_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService/Sensor"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    const/4 p1, 0x5

    .line 144
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_0
    return-void
.end method

.method public startSensor()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), oemStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updatedStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateStrength(I)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStrength: Before("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " After("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    const-string p1, "BiometricService/Sensor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
