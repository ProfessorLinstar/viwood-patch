.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;
.super Ljava/lang/Object;
.source "HidlToAidlSensorAdapter.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollSuccess()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)I

    move-result v1

    const/4 v2, 0x1

    .line 112
    invoke-static {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->-$$Nest$mgetFingerprintUpdateActiveUserClient(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;IZ)Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public onHardwareUnavailable()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->-$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->-$$Nest$fputmSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    const/16 v0, -0x2710

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->-$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;I)V

    return-void
.end method
