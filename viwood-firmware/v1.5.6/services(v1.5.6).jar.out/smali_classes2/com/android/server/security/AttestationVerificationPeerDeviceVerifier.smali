.class public Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "AttestationVerificationPeerDeviceVerifier.java"


# static fields
.field public static final ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

.field public final mContext:Landroid/content/Context;

.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mRevocationEnabled:Z

.field public final mTestLocalPatchDate:Ljava/time/LocalDate;

.field public final mTestSystemDate:Ljava/time/LocalDate;

.field public final mTrustAnchors:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const-string v0, "AndroidSystem"

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 130
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 131
    const-string p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchors()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 133
    new-instance p2, Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-direct {p2, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 136
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 146
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 147
    const-string p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 148
    iput-object p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 149
    new-instance p2, Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-direct {p2, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    .line 150
    iput-boolean p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 151
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 152
    iput-object p6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method


# virtual methods
.method public final checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z
    .locals 0

    .line 514
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    .line 515
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I
    .locals 6

    .line 409
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationVersion()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x10

    const/4 v3, 0x1

    const-string v4, "AVF"

    if-ge v0, v1, :cond_0

    .line 410
    const-string v0, "Attestation version is not at least 3 (Keymaster 4)."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    .line 413
    :cond_0
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    const/4 v0, 0x0

    .line 417
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeymasterVersion()I

    move-result v1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    .line 418
    const-string v0, "Keymaster version is not at least 4."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    .line 421
    :cond_1
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    .line 425
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsVersion()I

    move-result v1

    const v5, 0x186a0

    if-ge v1, v5, :cond_2

    .line 426
    const-string v0, "Android OS version is not 10+."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_2

    .line 429
    :cond_2
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    .line 432
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isAttestationHardwareBacked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    const-string v0, "Key is not HW backed."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_3

    .line 436
    :cond_3
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    .line 439
    :goto_3
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isKeymasterHardwareBacked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    const-string v0, "Keymaster is not HW backed."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 443
    :cond_4
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    move v2, v0

    .line 446
    :goto_4
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v0

    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v0, v1, :cond_5

    .line 447
    const-string v0, "Boot state not Verified."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x20

    goto :goto_5

    .line 450
    :cond_5
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    .line 454
    :goto_5
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isVerifiedBootLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 455
    const-string v0, "Verified boot state is not locked."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x20

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    .line 458
    :cond_6
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 461
    :goto_6
    const-string v1, "VerifiedBootLocked is not set."

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x20

    .line 465
    :goto_7
    const-string/jumbo v0, "param_max_patch_level_diff_months"

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 469
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 471
    const-string v0, "OS patch level is not within valid range."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x40

    goto :goto_8

    .line 474
    :cond_7
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    .line 478
    :goto_8
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    const-string v1, "Boot patch level is not within valid range."

    if-nez v0, :cond_8

    .line 480
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x40

    goto :goto_9

    .line 483
    :cond_8
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 486
    :goto_9
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyVendorPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 488
    const-string v0, "Vendor patch level is not within valid range."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x40

    goto :goto_a

    .line 491
    :cond_9
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    .line 494
    :goto_a
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result p0

    if-nez p0, :cond_a

    .line 496
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x40

    goto :goto_b

    .line 499
    :cond_a
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    :goto_b
    return v2
.end method

.method public final checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z
    .locals 4

    .line 349
    iput p3, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 350
    const-string v2, "AVF"

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 364
    const-string p3, "localbinding.challenge"

    .line 365
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 364
    invoke-virtual {p0, p2, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z

    move-result p3

    if-nez p3, :cond_2

    .line 367
    const-string p0, "Provided challenge does not match leaf certificate challenge."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported local binding type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {p3}, Landroid/security/attestationverification/AttestationVerificationManager;->localBindingTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_1
    const-string p3, "localbinding.public_key"

    .line 354
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 353
    invoke-virtual {p0, p1, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkPublicKey(Ljava/security/cert/Certificate;[B)Z

    move-result p3

    if-nez p3, :cond_2

    .line 356
    const-string p0, "Provided public key does not match leaf certificate public key."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p3, 0x1

    .line 377
    iput-boolean p3, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    .line 380
    const-string v0, "android.key_owned_by_system"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 381
    iput-boolean p3, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    .line 382
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 387
    const-string p0, "Certificate public key is not owned by the AndroidSystem."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 390
    :cond_3
    iput-boolean p3, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    goto :goto_0

    .line 392
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don\'t want to verify it."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return p3
.end method

.method public final checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z
    .locals 0

    .line 521
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getApplicationPackageNameVersion()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 522
    sget-object p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Owner is not system, packages="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AVF"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPublicKey(Ljava/security/cert/Certificate;[B)Z
    .locals 0

    .line 507
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    .line 508
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final getCertificateBytes(Ljava/lang/String;)[B
    .locals 1

    .line 330
    const-string p0, "\\s+"

    const-string v0, "\n"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    const-string p1, "-BEGIN\\nCERTIFICATE-"

    const-string v0, "-BEGIN CERTIFICATE-"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 333
    const-string p1, "-END\\nCERTIFICATE-"

    const-string v0, "-END CERTIFICATE-"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 335
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getCertificates([B)Ljava/util/List;
    .locals 2

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTrustAnchorResources()[Ljava/lang/String;
    .locals 1

    .line 339
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107011f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTrustAnchors()Ljava/util/Set;
    .locals 8

    .line 315
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchorResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 318
    new-instance v5, Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 320
    invoke-virtual {p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 319
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 318
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 323
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 324
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Invalid trust anchor certificate."

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isValidPatchLevel(II)Z
    .locals 8

    .line 537
    const-string v0, "AVF"

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 543
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz p0, :cond_1

    goto :goto_1

    .line 546
    :cond_1
    sget-object p0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_1
    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, p0, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-lez v1, :cond_2

    return v4

    .line 562
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_3

    .line 564
    const-string p0, "Patch level is not in format YYYYMM or YYYYMMDD"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x4

    .line 568
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 569
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 570
    invoke-static {v1, p1, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 573
    invoke-virtual {v3, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-gtz p0, :cond_4

    return v4

    :cond_4
    return v2

    .line 549
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Build.VERSION.SECURITY_PATCH: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in format YYYY-MM-DD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final validateAttestationParameters(ILandroid/os/Bundle;)Z
    .locals 5

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 267
    const-string v1, "AVF"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-eq p1, p0, :cond_0

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binding type is not supported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 272
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 273
    const-string p0, "At least 1 requirement is required."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 277
    const-string v2, "localbinding.public_key"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    const-string p0, "Requirements does not contain key: localbinding.public_key"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-ne p1, p0, :cond_3

    .line 282
    const-string p0, "localbinding.challenge"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 283
    const-string p0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    return v4
.end method

.method public final validateCertificateChain(Ljava/util/List;)V
    .locals 3

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v2, v0, v1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 303
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Ljava/util/List;)V

    :cond_0
    return-void

    .line 294
    :cond_1
    const-string p0, "AVF"

    const-string p1, "Certificate chain less than 2 in size."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyAttestation(ILandroid/os/Bundle;[B)I
    .locals 2

    .line 174
    new-instance v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier-IA;)V

    .line 176
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->verifyAttestationInternal(ILandroid/os/Bundle;[BLcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I

    move-result p1

    .line 178
    iput p1, v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    .line 179
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->logAttempt(Lcom/android/server/security/AttestationVerificationManagerService$DumpData;)V

    return p1
.end method

.method public final verifyAttestationInternal(ILandroid/os/Bundle;[BLcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I
    .locals 11

    .line 188
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const/4 v1, 0x4

    const-string v2, "AVF"

    if-nez v0, :cond_0

    .line 189
    const-string p0, "Unable to access CertificateFactory"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x1

    .line 192
    iput-boolean v3, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    .line 194
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v0, :cond_1

    .line 195
    const-string p0, "Unable to access CertPathValidator"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 198
    :cond_1
    iput-boolean v3, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    .line 207
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object p3

    .line 209
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)V

    .line 210
    iput-boolean v3, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    const/4 v0, 0x0

    .line 212
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 213
    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v6

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateAttestationParameters(ILandroid/os/Bundle;)Z

    move-result p3

    const/16 v10, 0x8

    if-nez p3, :cond_2

    return v10

    .line 220
    :cond_2
    iput-boolean v3, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    move-object v9, p4

    .line 223
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z

    move-result p0

    if-nez p0, :cond_3

    move v0, v10

    .line 230
    :cond_3
    invoke-virtual {v4, v8, v6, v9}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I

    move-result p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p0, v0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 242
    :goto_0
    const-string p1, "Unexpected error"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_2

    .line 237
    :goto_1
    const-string p1, "Unable to parse/validate Android Attestation certificate(s)"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v1
.end method
