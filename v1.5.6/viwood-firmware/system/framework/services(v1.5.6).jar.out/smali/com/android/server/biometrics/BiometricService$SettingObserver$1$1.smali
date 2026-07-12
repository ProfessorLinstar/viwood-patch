.class public Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "BiometricService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

.field public final synthetic val$fingerprintSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$1;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentsChanged(IIZ)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p2, v0, :cond_0

    .line 686
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmFingerprintEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 687
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 686
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
