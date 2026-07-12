.class public Lcom/android/server/biometrics/sensors/face/FaceService$1;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "FaceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$1;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 0

    .line 776
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$1;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$1;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmRegistry(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->start(Ljava/util/List;)V

    return-void
.end method
