.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "FaceProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 10

    .line 265
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 266
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Landroid/content/Context;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v6, p1

    .line 266
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method
