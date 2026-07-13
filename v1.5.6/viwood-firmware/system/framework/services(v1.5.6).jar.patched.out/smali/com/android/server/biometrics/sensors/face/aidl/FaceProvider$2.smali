.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "FaceProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method
