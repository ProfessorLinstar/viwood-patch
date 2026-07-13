.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$FOSDjhyLxG3xMf6j7e1awdBMCeM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;IIJZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->lambda$onClientFinished$1(IIJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SD_bziflpOr4WdvYEZXxz1mCSI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->lambda$onClientStarted$0(IIJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIJ)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$userId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$sensorId:I

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClientStarted$0(IIJ)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authStartedFor(IIJ)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onClientFinished$1(IIJZ)V
    .locals 7

    .line 595
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    .line 596
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v2

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 595
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(IIIJZ)V

    return-void
.end method

.method public onBiometricAction(I)V
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onBiometricAction(I)V

    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    .line 593
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 594
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricHandlerProvider(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$userId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$requestId:J

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;IIJZ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 6

    .line 580
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 581
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricHandlerProvider(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$userId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;->val$requestId:J

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;IIJ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
