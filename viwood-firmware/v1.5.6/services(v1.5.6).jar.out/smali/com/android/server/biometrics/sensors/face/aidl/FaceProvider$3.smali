.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$2J6kI5P_KVkNOQrgiUfEep1lllk(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->lambda$onClientStarted$0(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QD1WjOw1i-Hdtlp_mmrsqgReVXQ(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->lambda$onClientFinished$1(IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onClientFinished$1(IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 7

    .line 612
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    .line 613
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v2

    .line 614
    invoke-virtual {p5}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthSuccessful()Z

    move-result v6

    move v1, p1

    move v3, p2

    move-wide v4, p3

    .line 612
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(IIIJZ)V

    return-void
.end method

.method public final synthetic lambda$onClientStarted$0(IIJ)V
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authStartedFor(IIJ)V

    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    .line 611
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmBiometricHandlerProvider(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 6

    .line 603
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmBiometricHandlerProvider(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
