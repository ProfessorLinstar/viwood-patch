.class public Lcom/android/server/biometrics/BiometricCameraManagerImpl;
.super Ljava/lang/Object;
.source "BiometricCameraManagerImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricCameraManager;


# instance fields
.field public final mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsCameraAvailable(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;-><init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 52
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 53
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 p0, 0x0

    .line 54
    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public isAnyCameraUnavailable()Z
    .locals 7

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 61
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return v0

    .line 67
    :goto_1
    const-string v1, "BiometricCameraManager"

    const-string v2, "Camera exception thrown when trying to determine availability: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isCameraPrivacyEnabled()Z
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
