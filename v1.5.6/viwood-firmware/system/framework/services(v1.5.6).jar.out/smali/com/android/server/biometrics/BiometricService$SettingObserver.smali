.class public Lcom/android/server/biometrics/BiometricService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BiometricService.java"


# instance fields
.field public final BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

.field public final FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

.field public final FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

.field public final mBiometricEnabledForApps:Ljava/util/Map;

.field public final mBiometricEnabledOnKeyguard:Ljava/util/Map;

.field public final mCallbacks:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFaceAlwaysRequireConfirmation:Ljava/util/Map;

.field public final mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

.field public final mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

.field public final mFaceEnrolledForUser:Ljava/util/Map;

.field public final mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

.field public final mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

.field public final mFingerprintEnrolledForUser:Ljava/util/Map;

.field public final mMandatoryBiometricsEnabled:Ljava/util/Map;

.field public final mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

.field public final mUseLegacyFaceOnlySettings:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFaceEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFingerprintEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .locals 1

    .line 308
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 253
    const-string p2, "face_unlock_keyguard_enabled"

    .line 254
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 255
    const-string p2, "face_unlock_app_enabled"

    .line 256
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 259
    const-string p2, "face_unlock_always_require_confirmation"

    .line 260
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 263
    const-string p2, "biometric_keyguard_enabled"

    .line 264
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 265
    const-string p2, "biometric_app_enabled"

    .line 266
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 267
    const-string p2, "face_keyguard_enabled"

    .line 268
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 269
    const-string p2, "face_app_enabled"

    .line 270
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    .line 271
    const-string p2, "fingerprint_keyguard_enabled"

    .line 272
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 273
    const-string p2, "fingerptint_app_enabled"

    .line 274
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    .line 275
    const-string/jumbo p2, "mandatory_biometrics"

    .line 276
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 277
    const-string/jumbo p2, "mandatory_biometrics_requirements_satisfied"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 284
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 285
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 286
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    .line 287
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    .line 288
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    .line 289
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    .line 290
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 291
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 292
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 294
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 296
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 310
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 311
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.fingerprint"

    .line 314
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string p4, "android.hardware.biometrics.face"

    .line 316
    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    .line 319
    sget p4, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v0, 0x1d

    if-gt p4, v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 323
    invoke-virtual {p0, p1, p5, p6}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->addBiometricListenersForMandatoryBiometrics(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    return-void
.end method


# virtual methods
.method public final addBiometricListenersForMandatoryBiometrics(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 663
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {p2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 696
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V

    invoke-virtual {p3, p1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_1
    return-void
.end method

.method public final getBiometricStatusForIdentityCheck(I)Z
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xe

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getConfirmationAlwaysRequired(II)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 561
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledForApps(II)Z
    .locals 1

    .line 541
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 542
    iget-boolean p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 543
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 548
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledOnKeyguard(II)Z
    .locals 1

    .line 513
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 514
    iget-boolean p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 515
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 520
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getMandatoryBiometricsEnabledAndRequirementsSatisfiedForUser(I)Z
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 577
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 576
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 579
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 578
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getBiometricStatusForIdentityCheck(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public notifyEnabledOnKeyguardCallbacks(II)V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledOnKeyguard(II)Z

    move-result p0

    const/4 v1, 0x0

    .line 602
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 603
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->notify(ZII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 383
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "face_unlock_keyguard_enabled"

    invoke-static {v4, v5, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_1b

    if-nez p1, :cond_1b

    .line 390
    invoke-virtual {p0, p3, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_app_enabled"

    invoke-static {p0, v0, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_always_require_confirmation"

    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 404
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "biometric_keyguard_enabled"

    if-eqz v0, :cond_7

    .line 405
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v4, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_1b

    if-nez p1, :cond_1b

    const/16 p1, 0xe

    .line 412
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_b

    .line 415
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v4, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v5, :cond_8

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_8
    if-ne p2, v3, :cond_9

    goto :goto_0

    :cond_9
    move p2, v2

    .line 424
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "face_keyguard_enabled"

    invoke-static {v4, v5, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 430
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_1b

    if-nez p1, :cond_1b

    .line 431
    invoke-virtual {p0, p3, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 434
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v4, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v5, :cond_c

    :goto_2
    move p2, v3

    goto :goto_3

    :cond_c
    if-ne p2, v3, :cond_d

    goto :goto_2

    :cond_d
    move p2, v2

    .line 444
    :goto_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledOnKeyguard:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "fingerprint_keyguard_enabled"

    invoke-static {v1, v4, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 450
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_1b

    if-nez p1, :cond_1b

    const/4 p1, 0x2

    .line 451
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void

    .line 453
    :cond_f
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "biometric_app_enabled"

    if-eqz p1, :cond_11

    .line 454
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v0, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_10

    move v2, v3

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 459
    :cond_11
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 460
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v5, :cond_12

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_12
    if-ne p1, v3, :cond_13

    goto :goto_4

    :cond_13
    move p1, v2

    .line 469
    :goto_5
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnabledForApps:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_app_enabled"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14

    move v2, v3

    :cond_14
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 474
    :cond_15
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FINGERPRINT_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 475
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v5, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v5, :cond_16

    :goto_6
    move p1, v3

    goto :goto_7

    :cond_16
    if-ne p1, v3, :cond_17

    goto :goto_6

    :cond_17
    move p1, v2

    .line 484
    :goto_7
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnabledForApps:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerptint_app_enabled"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_18

    move v2, v3

    :cond_18
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 489
    :cond_19
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 490
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    return-void

    .line 491
    :cond_1a
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 492
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    :cond_1b
    return-void
.end method

.method public updateContentObserver()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 335
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final updateMandatoryBiometricsForAllProfiles(I)V
    .locals 9

    .line 609
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    move v0, p1

    .line 615
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 616
    const-string/jumbo v2, "mandatory_biometrics"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 617
    array-length p1, v1

    move v5, v4

    :goto_1
    if-ge v5, p1, :cond_2

    aget v6, v1, v5

    .line 618
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 619
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_2

    :cond_1
    move v8, v4

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 618
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 626
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 625
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateMandatoryBiometricsRequirementsForAllProfiles(I)V
    .locals 9

    .line 635
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    move v0, p1

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 642
    const-string/jumbo v2, "mandatory_biometrics_requirements_satisfied"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 643
    array-length p1, v1

    move v5, v3

    :goto_1
    if-ge v5, p1, :cond_2

    aget v6, v1, v5

    .line 644
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 645
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 644
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 653
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 652
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
