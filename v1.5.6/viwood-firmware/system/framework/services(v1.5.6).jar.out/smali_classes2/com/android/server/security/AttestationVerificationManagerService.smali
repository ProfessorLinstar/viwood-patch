.class public Lcom/android/server/security/AttestationVerificationManagerService;
.super Lcom/android/server/SystemService;
.source "AttestationVerificationManagerService.java"


# instance fields
.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDumpLogger(Lcom/android/server/security/AttestationVerificationManagerService;)Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/security/AttestationVerificationManagerService;->verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    invoke-direct {v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 68
    new-instance v1, Lcom/android/server/security/AttestationVerificationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;-><init>(Lcom/android/server/security/AttestationVerificationManagerService;)V

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    .line 65
    new-instance v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {v1, p1, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;-><init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 148
    const-string v0, "AVF"

    const-string v1, "Started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "attestation_verification"

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 4

    .line 120
    new-instance v0, Landroid/security/attestationverification/IVerificationResult;

    invoke-direct {v0}, Landroid/security/attestationverification/IVerificationResult;-><init>()V

    const/4 v1, 0x0

    .line 121
    iput-object v1, v0, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    .line 122
    invoke-virtual {p1}, Landroid/security/attestationverification/AttestationProfile;->getAttestationProfileId()I

    move-result p1

    const/4 v1, 0x2

    .line 123
    const-string v2, "AVF"

    if-eq p1, v1, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Profile ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_0

    .line 135
    :cond_0
    const-string p1, "Verifying Peer Device profile."

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result p0

    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_0

    .line 125
    :cond_1
    const-string p0, "Verifying Self Trusted profile."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    invoke-static {}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getInstance()Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    move-result-object p0

    .line 129
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result p0

    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x4

    .line 131
    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 143
    :goto_0
    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
