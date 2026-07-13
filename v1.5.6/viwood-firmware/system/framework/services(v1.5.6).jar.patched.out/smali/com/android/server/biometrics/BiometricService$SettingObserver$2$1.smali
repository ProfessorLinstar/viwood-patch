.class public Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "BiometricService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

.field public final synthetic val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentsChanged(IIZ)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    if-ne p2, v0, :cond_0

    .line 720
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmFaceEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 721
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 720
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
