.class public Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "BiometricCameraManagerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->-$$Nest$fgetmIsCameraAvailable(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;->this$0:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->-$$Nest$fgetmIsCameraAvailable(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
