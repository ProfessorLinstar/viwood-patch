.class public Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;
.super Ljava/lang/Object;
.source "HidlToAidlSensorAdapter.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollSuccess()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->scheduleFaceUpdateActiveUserClient(I)V

    return-void
.end method

.method public onHardwareUnavailable()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->-$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    const/16 v0, -0x2710

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->-$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    return-void
.end method
