.class public Lcom/android/server/biometrics/BiometricService$Injector;
.super Ljava/lang/Object;
.source "BiometricService.java"


# direct methods
.method public static synthetic $r8$lambda$hj2FW_KKwVogCJ9AY5YUaMgILng(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;
    .locals 2

    .line 1402
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityManagerService()Landroid/app/IActivityManager;
    .locals 0

    .line 1324
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricCameraManager(Landroid/content/Context;)Lcom/android/server/biometrics/BiometricCameraManager;
    .locals 2

    .line 1414
    new-instance p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    .line 1415
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/SensorPrivacyManager;)V

    return-object p0
.end method

.method public getBiometricContext(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 1406
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;
    .locals 0

    .line 1373
    new-instance p0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-object p0
.end method

.method public getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 1386
    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 1391
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1392
    const-class p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    .line 1394
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1397
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    .line 1332
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    return-object p0
.end method

.method public getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;
    .locals 0

    .line 1328
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationLogger()Lcom/android/server/biometrics/BiometricNotificationLogger;
    .locals 0

    .line 1419
    new-instance p0, Lcom/android/server/biometrics/BiometricNotificationLogger;

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricNotificationLogger;-><init>()V

    return-object p0
.end method

.method public getRequestGenerator()Ljava/util/function/Supplier;
    .locals 2

    .line 1401
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1402
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v0
.end method

.method public getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .locals 7

    .line 1349
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/os/UserManager;

    const-class p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1350
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    const-class p0, Landroid/hardware/face/FaceManager;

    .line 1351
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/hardware/face/FaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    return-object v0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 1340
    const-string/jumbo p0, "statusbar"

    .line 1341
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1340
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/ITrustManager;
    .locals 0

    .line 1336
    const-string/jumbo p0, "trust"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 0

    .line 1410
    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public isDebugEnabled(Landroid/content/Context;I)Z
    .locals 0

    .line 1358
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V
    .locals 0

    .line 1365
    const-string p0, "biometric"

    invoke-static {p1, p0, p2}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
