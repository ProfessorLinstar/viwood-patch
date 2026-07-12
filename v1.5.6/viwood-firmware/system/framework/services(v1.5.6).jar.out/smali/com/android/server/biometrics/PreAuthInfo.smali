.class public Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# instance fields
.field public final callingUserId:I

.field public final confirmationRequested:Z

.field public final context:Landroid/content/Context;

.field public final credentialAvailable:Z

.field public final credentialRequested:Z

.field public final eligibleSensors:Ljava/util/List;

.field public final ignoreEnrollmentState:Z

.field public final ineligibleSensors:Ljava/util/List;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

.field public final mBiometricRequested:Z

.field public final mBiometricStrengthRequested:I

.field public final mIsMandatoryBiometricsAuthentication:Z

.field public final mOnlyMandatoryBiometricsRequested:Z

.field public final userId:I


# direct methods
.method public constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 92
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 93
    iput-object p11, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    .line 94
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 96
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 97
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 98
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 99
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 100
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ignoreEnrollmentState:Z

    .line 101
    iput p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    .line 102
    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    .line 103
    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    .line 104
    iput-boolean p12, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    .line 105
    iput-boolean p13, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return-void
.end method

.method public static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 118
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-ne v1, v2, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v3

    .line 129
    :goto_0
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    move-object/from16 v2, p2

    .line 130
    invoke-virtual {v2, v8}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getMandatoryBiometricsEnabledAndRequirementsSatisfiedForUser(I)Z

    move-result v4

    .line 129
    invoke-static {v1, v4, v0}, Lcom/android/server/biometrics/PreAuthInfo;->dropCredentialFallback(IZLandroid/app/trust/ITrustManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    .line 133
    invoke-virtual {v10, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 134
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    const/high16 v1, 0x1040000

    move-object/from16 v13, p8

    .line 135
    invoke-virtual {v13, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object/from16 v13, p8

    :goto_1
    move v14, v11

    goto :goto_2

    :cond_2
    move-object/from16 v13, p8

    move v14, v3

    .line 139
    :goto_2
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v15

    .line 140
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v6

    .line 141
    invoke-static {v10}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v16

    .line 144
    invoke-virtual {v13}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    .line 143
    invoke-interface {v0, v8, v1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v17

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_4

    .line 156
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 161
    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v10}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v8

    move/from16 v3, p4

    move-object/from16 v9, p9

    move-object v1, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object v2, v0

    move-object/from16 v0, p1

    .line 158
    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I

    move-result v7

    move v8, v3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Sensor ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " User id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v11, :cond_3

    move-object/from16 v0, v19

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v20

    goto :goto_4

    :cond_3
    move-object/from16 v0, v19

    .line 180
    new-instance v1, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, v20

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v2, p2

    move-object v4, v0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v19, v4

    .line 185
    new-instance v0, Lcom/android/server/biometrics/PreAuthInfo;

    move/from16 v9, p4

    move-object/from16 v11, p9

    move v2, v6

    move-object v7, v10

    move-object v10, v13

    move v13, v14

    move v1, v15

    move/from16 v3, v16

    move/from16 v6, v17

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V

    return-object v0
.end method

.method public static dropCredentialFallback(IZLandroid/app/trust/ITrustManager;)Z
    .locals 3

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 199
    :try_start_0
    invoke-interface {p2}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v2

    return p0

    .line 202
    :catch_0
    const-string p0, "BiometricService/PreAuthInfo"

    const-string p1, "Remote exception while trying to check if user is in a trusted location."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I
    .locals 2

    .line 226
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_0

    return v1

    .line 230
    :cond_0
    iget p7, p2, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 231
    invoke-static {p7, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p7

    .line 233
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p6

    if-eqz p7, :cond_1

    if-nez p6, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    if-nez p7, :cond_2

    const/4 p0, 0x4

    return p0

    .line 241
    :cond_2
    iget p6, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 p7, 0x6

    const/16 v0, 0x8

    if-ne p6, v0, :cond_3

    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isAnyCameraUnavailable()Z

    move-result p6

    if-eqz p6, :cond_3

    return p7

    .line 246
    :cond_3
    :try_start_0
    iget-object p6, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {p6, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_4

    return p7

    .line 250
    :cond_4
    iget-object p6, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {p6, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    if-nez p8, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    if-eqz p9, :cond_6

    .line 255
    iget p4, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne p4, v0, :cond_6

    .line 256
    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result p4

    if-eqz p4, :cond_6

    const/16 p0, 0xc

    return p0

    .line 262
    :cond_6
    iget-object p4, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 263
    invoke-interface {p4, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p6, 0x1

    if-ne p4, p6, :cond_7

    const/16 p0, 0xa

    return p0

    :cond_7
    if-ne p4, v1, :cond_8

    const/16 p0, 0xb

    return p0

    .line 273
    :cond_8
    iget p4, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p1, p4, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    if-eqz p5, :cond_a

    .line 278
    iget p1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0, p1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    return p6

    :catch_0
    return p7
.end method

.method public static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .locals 2

    .line 294
    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 302
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricService/PreAuthInfo"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 296
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Modality unknown to devicePolicyManager: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .locals 0

    .line 288
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result p0

    return p0
.end method

.method public static mapModalityToDevicePolicyType(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricService/PreAuthInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x80

    return p0

    :cond_1
    const/16 p0, 0x100

    return p0

    :cond_2
    const/16 p0, 0x20

    return p0
.end method


# virtual methods
.method public final calculateErrorByPriority()Landroid/util/Pair;
    .locals 8

    .line 331
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 332
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    :cond_1
    move-object v1, v5

    :cond_2
    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    move-object v4, v5

    :cond_3
    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    move-object v2, v5

    :cond_4
    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    if-eqz v4, :cond_9

    return-object v4

    .line 367
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public getCanAuthenticateResult()I
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 467
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result p0

    .line 466
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result p0

    return p0
.end method

.method public getEligibleModalities()I
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 527
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v2

    goto :goto_0

    .line 530
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_1

    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getInternalStatus()Landroid/util/Pair;
    .locals 9

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 387
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const-string v3, "BiometricService/PreAuthInfo"

    const/16 v4, 0xc

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-eqz v2, :cond_7

    iget-boolean v8, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v8, :cond_7

    .line 388
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    .line 410
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 411
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_6

    :cond_2
    move v4, v6

    :goto_1
    move v1, v7

    goto/16 :goto_6

    .line 389
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricSensor;

    .line 390
    iget v6, v6, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v6

    goto :goto_3

    .line 393
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_6

    or-int/lit8 v1, v1, 0x1

    :cond_5
    move v4, v7

    goto/16 :goto_6

    :cond_6
    if-ne v1, v5, :cond_5

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_7
    const/4 v8, 0x2

    if-eqz v2, :cond_b

    .line 418
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 419
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 420
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v2

    goto :goto_4

    :cond_8
    if-ne v1, v5, :cond_5

    if-eqz v0, :cond_5

    goto :goto_6

    .line 433
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 434
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    .line 435
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 436
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v8

    goto :goto_6

    .line 442
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_c

    .line 444
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_2

    move v4, v7

    goto :goto_1

    .line 445
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    if-eqz v0, :cond_d

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    if-nez p0, :cond_d

    const/16 v4, 0xd

    goto :goto_6

    .line 451
    :cond_d
    const-string p0, "No authenticators requested"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 454
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCanAuthenticateInternal Modality: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AuthenticatorStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getIsMandatoryBiometricsAuthentication()Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return p0
.end method

.method public getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object p0

    .line 487
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    .line 488
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 489
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    .line 509
    :pswitch_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public numSensorsWaitingForCookie()I
    .locals 4

    .line 538
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 539
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Waiting for cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    const-string v2, "BiometricService/PreAuthInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public shouldShowCredential()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 556
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 558
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 562
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 564
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 567
    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
