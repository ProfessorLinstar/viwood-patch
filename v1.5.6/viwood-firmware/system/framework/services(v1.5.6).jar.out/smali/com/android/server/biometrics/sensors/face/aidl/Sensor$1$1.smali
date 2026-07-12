.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

.field public final synthetic val$newUserId:I

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$newUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollSuccess()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$sensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$newUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$sensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->val$newUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    return-void
.end method

.method public onHardwareUnavailable()V
    .locals 2

    .line 159
    const-string v0, "Sensor"

    const-string v1, "Face sensor hardware unavailable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-void
.end method
