.class public Lcom/android/server/security/AttestationVerificationManagerService$1;
.super Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.source "AttestationVerificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/AttestationVerificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/AttestationVerificationManagerService;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-direct {p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "AVF"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "    "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    const-string p2, "AttestationVerificationManagerService"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 110
    const-string p2, "Event Log:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$fgetmDumpLogger(Lcom/android/server/security/AttestationVerificationManagerService;)Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->dumpTo(Landroid/util/IndentingPrintWriter;)V

    .line 113
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final enforceUsePermission()V
    .locals 2

    .line 96
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 76
    const-string v1, "AVF"

    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 78
    :try_start_0
    const-string/jumbo v0, "verifyAttestation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-static/range {p0 .. p5}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 82
    const-string p1, "failed to verify attestation"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 92
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
