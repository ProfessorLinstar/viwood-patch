.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "FingerprintService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 0

    .line 1076
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->start(Ljava/util/List;)V

    return-void
.end method
